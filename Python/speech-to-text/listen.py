#!/usr/bin/env python
"""
Adapted from: https://github.com/GoogleCloudPlatform/python-docs-samples/blob/b0bd8e9ce6b1535c81715b35fed05cef2aa37cba/speech/cloud-client/transcribe_streaming_indefinite.py
"""

from __future__ import division

import argparse
import re
import sys

from google.cloud import speech
from google.cloud.speech import enums
from google.cloud.speech import types
from google.api_core import exceptions
from osc4py3.as_eventloop import (
    osc_startup,
    osc_udp_client,
    osc_send,
    osc_process,
    osc_terminate
)
from osc4py3 import oscbuildparse

from microphone_stream import ResumableMicrophoneStream
from word_lexicons import word_color_associations


def duration_to_secs(duration):
    return duration.seconds + (duration.nanos / float(1e9))


def _record_keeper(responses, stream):
    """Calls the stream's on_transcribe callback for each final response.

    Args:
        responses - a generator of responses. The responses must already be
            filtered for ones with results and alternatives.
        stream - a ResumableMicrophoneStream.
    """
    for r in responses:
        result = r.results[0]
        if result.is_final:
            top_alternative = result.alternatives[0]
            # Keep track of what transcripts we've received, so we can resume
            # intelligently when we hit the deadline
            stream.on_transcribe(duration_to_secs(top_alternative.words[-1].end_time))
        yield r


def listen_print_loop(responses, stream):
    """Iterates through server responses and prints them.

    Same as in transcribe_streaming_mic, but keeps track of when a sent
    audio_chunk has been transcribed.
    """
    with_results = (r for r in responses if (r.results and r.results[0].alternatives))
    listen_print_loop_helper(_record_keeper(with_results, stream))


def listen_print_loop_helper(responses):
    """Iterates through server responses and prints them.

    The responses passed is a generator that will block until a response
    is provided by the server.

    Each response may contain multiple results, and each result may contain
    multiple alternatives; for details, see https://goo.gl/tjCPAU.  Here we
    print only the transcription for the top alternative of the top result.

    In this case, responses are provided for interim results as well. If the
    response is an interim one, print a line feed at the end of it, to allow
    the next result to overwrite it, until the response is a final one. For the
    final one, print a newline to preserve the finalized transcription.
    """
    num_chars_printed = 0
    for response in responses:
        if not response.results:
            continue

        # The `results` list is consecutive. For streaming, we only care about
        # the first result being considered, since once it's `is_final`, it
        # moves on to considering the next utterance.
        result = response.results[0]
        if not result.alternatives:
            continue

        # Display the transcription of the top alternative.
        top_alternative = result.alternatives[0]
        transcript = top_alternative.transcript

        # Display interim results, but with a carriage return at the end of the
        # line, so subsequent lines will overwrite them.
        #
        # If the previous result was longer than this one, we need to print
        # some extra spaces to overwrite the previous result
        overwrite_chars = ' ' * (num_chars_printed - len(transcript))

        if not result.is_final:
            sys.stdout.write(transcript + overwrite_chars + '\r')
            sys.stdout.flush()

            num_chars_printed = len(transcript)

            osc_address_pattern = '/transcript/interim'
            osc_word_colors_address_pattern = '/transcript/interim/word-colors'
        else:
            print(transcript + overwrite_chars)

            # Exit recognition if any of the transcribed phrases could be
            # one of our keywords.
            if re.search(r'\b(exit|quit)\b', transcript, re.I):
                print('Exiting..')
                break

            num_chars_printed = 0

            osc_address_pattern = '/transcript/final'
            osc_word_colors_address_pattern = '/transcript/final/word-colors'

        transcript = transcript.strip('\"').strip()

        word_colors = []
        for word in transcript.split():
            if word.lower() in word_color_associations:
                word_colors.append(word_color_associations.get(word.lower()).get('color'))
            else:
                word_colors.append(None)

        msg = oscbuildparse.OSCMessage(osc_address_pattern, ',s', [transcript])
        osc_send(msg, 'python-speech-to-text')
        osc_process()
        word_colors_msg = oscbuildparse.OSCMessage(osc_word_colors_address_pattern, ',' + 's' * len(word_colors), word_colors)
        osc_send(word_colors_msg, 'python-speech-to-text')
        osc_process()


def main(sample_rate, device_name):
    # See http://g.co/cloud/speech/docs/languages
    # for a list of supported languages.
    language_code = 'en-US'  # a BCP-47 language tag

    client = speech.SpeechClient()
    config = types.RecognitionConfig(
        encoding=enums.RecognitionConfig.AudioEncoding.LINEAR16,
        sample_rate_hertz=sample_rate,
        language_code=language_code,
        max_alternatives=1,
        enable_word_time_offsets=True
    )
    streaming_config = types.StreamingRecognitionConfig(
        config=config,
        interim_results=True
    )

    mic_manager = ResumableMicrophoneStream(sample_rate, int(sample_rate / 10), device_name, max_replay_secs=5)

    osc_startup()
    osc_udp_client('127.0.0.1', 2781, 'python-speech-to-text')

    msg = oscbuildparse.OSCMessage('/start', None, oscbuildparse.OSCbang())
    osc_send(msg, 'python-speech-to-text')
    osc_process()

    with mic_manager as stream:
        resume = False
        while True:
            audio_generator = stream.generator(resume=resume)
            requests = (types.StreamingRecognizeRequest(audio_content=content)
                        for content in audio_generator)

            responses = client.streaming_recognize(streaming_config, requests)

            try:
                # Now, put the transcription responses to use.
                listen_print_loop(responses, stream)
                # Teardown code should be executed here
                msg = oscbuildparse.OSCMessage('/stop', None, oscbuildparse.OSCbang())
                osc_send(msg, 'python-speech-to-text')
                osc_process()
                osc_terminate()
                break
            except (exceptions.OutOfRange, exceptions.InvalidArgument) as e:
                if not ('maximum allowed stream duration' in e.message or
                        'deadline too short' in e.message):
                    raise

                print('Resuming...')
                resume = True


if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('-r', '--rate', default=44100, help='Sample rate.', type=int)
    parser.add_argument('-d', '--device_name', default='Built-in Microphone', help='Name of microphone device.', type=str)
    args = parser.parse_args()
    main(args.rate, args.device_name)
