#!/usr/bin/env python

import pyaudio
import pprint


def main():
    audio = pyaudio.PyAudio()
    pp = pprint.PrettyPrinter(indent=4)

    for i in range(audio.get_device_count()):
        device = audio.get_device_info_by_index(i)
        pp.pprint({k: device[k] for k in ['name', 'index', 'maxInputChannels', 'maxOutputChannels']})


if __name__ == '__main__':
    main()
