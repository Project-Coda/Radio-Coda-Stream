# Radio Coda Stream
The following repository contains the Docker image for ffmpeg which runs the Radio Coda Stream.

This script was modified from [@ohld](https://github.com/ohld)'s article [How to create your 24/7 YouTube online radio](https://okhlopkov.medium.com/how-to-create-your-24-7-youtube-online-radio-ca9e6834c192)

Docker image and modifications made by [@ikifar2012](https://github.com/ikifar2012)

## Technical overview
The Docker image consists of the ffmpeg script required to run the Radio Coda Stream, it relies on the [Radio Coda Stream Utilities](https://github.com/Project-Coda/Radio-Coda-Stream-Utilities) 
to provide the now playing information and [Azuracast] to provide the audio stream.

[Azuracast]: https://github.com/AzuraCast/AzuraCast
[s6-overlay]: https://github.com/just-containers/s6-overlay