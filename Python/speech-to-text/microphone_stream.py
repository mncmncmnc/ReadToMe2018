import collections
import pyaudio

from six.moves import queue


class MicrophoneStream(object):
    """Opens a recording stream as a generator yielding the audio chunks."""
    def __init__(self, rate, chunk_size, device_name):
        self._rate = rate
        self._chunk_size = chunk_size
        self._device_name = device_name

        # Create a thread-safe buffer of audio data
        self._buff = queue.Queue()
        self.closed = True

        # Some useful numbers
        self._num_channels = 1  # API only supports mono for now

    def __enter__(self):
        self.closed = False

        self._audio_interface = pyaudio.PyAudio()

        input_device_index = 0
        for i in range(self._audio_interface.get_device_count()):
            device = self._audio_interface.get_device_info_by_index(i)
            device_name = device['name']
            if device_name == self._device_name or device_name in self._device_name:
                input_device_index = i
                break

        self._device_index = input_device_index

        self._audio_stream = self._audio_interface.open(
            format=pyaudio.paInt16,
            # The API currently only supports 1-channel (mono) audio
            # https://goo.gl/z757pE
            channels=self._num_channels,
            rate=self._rate,
            input=True,
            input_device_index=input_device_index,
            frames_per_buffer=self._chunk_size,
            # Run the audio stream asynchronously to fill the buffer object.
            # This is necessary so that the input device's buffer doesn't
            # overflow while the calling thread makes network requests, etc.
            stream_callback=self._fill_buffer,
        )

        return self

    def __exit__(self, type, value, traceback):
        self._audio_stream.stop_stream()
        self._audio_stream.close()
        self.closed = True
        # Signal the generator to terminate so that the client's
        # streaming_recognize method will not block the process termination.
        self._buff.put(None)
        self._audio_interface.terminate()

    def _fill_buffer(self, in_data, *args, **kwargs):
        """Continuously collect data from the audio stream, into the buffer."""
        self._buff.put(in_data)
        return None, pyaudio.paContinue

    def generator(self):
        while not self.closed:
            # Use a blocking get() to ensure there's at least one chunk of
            # data, and stop iteration if the chunk is None, indicating the
            # end of the audio stream.
            chunk = self._buff.get()
            if chunk is None:
                return
            data = [chunk]

            # Now consume whatever other data's still buffered.
            while True:
                try:
                    chunk = self._buff.get(block=False)
                    if chunk is None:
                        return
                    data.append(chunk)
                except queue.Empty:
                    break

            yield b''.join(data)


class ResumableMicrophoneStream(MicrophoneStream):
    """Opens a recording stream as a generator yielding the audio chunks."""
    def __init__(self, rate, chunk_size, device_name, max_replay_secs=5):
        super(ResumableMicrophoneStream, self).__init__(rate, chunk_size, device_name)
        self._max_replay_secs = max_replay_secs

        # Some useful numbers
        # 2 bytes in 16 bit samples
        self._bytes_per_sample = 2 * self._num_channels
        self._bytes_per_second = self._rate * self._bytes_per_sample

        self._bytes_per_chunk = (self._chunk_size * self._bytes_per_sample)
        self._chunks_per_second = (
            self._bytes_per_second / self._bytes_per_chunk)
        self._untranscribed = collections.deque(
            maxlen=int(self._max_replay_secs * self._chunks_per_second))

    def on_transcribe(self, end_time):
        while self._untranscribed and end_time > self._untranscribed[0][1]:
            self._untranscribed.popleft()

    def generator(self, resume=False):
        total_bytes_sent = 0
        if resume:
            # Make a copy, in case on_transcribe is called while yielding them
            catchup = list(self._untranscribed)
            # Yield all the untranscribed chunks first
            for chunk, _ in catchup:
                yield chunk

        for byte_data in super(ResumableMicrophoneStream, self).generator():
            # Populate the replay buffer of untranscribed audio bytes
            total_bytes_sent += len(byte_data)
            chunk_end_time = total_bytes_sent / self._bytes_per_second
            self._untranscribed.append((byte_data, chunk_end_time))

            yield byte_data
