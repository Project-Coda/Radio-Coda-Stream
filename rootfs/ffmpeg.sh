#!/bin/bash
ldconfig && ffmpeg \
    -y -vsync 0 -hwaccel cuda -hwaccel_output_format cuda \
    -re -f lavfi -i "movie=filename=$VIDEO_SOURCE:loop=0, setpts=N/(FRAME_RATE*TB)" \
    -thread_queue_size 1024 -i "$AUDIO_SOURCE" \
    -map 0:v:0 -map 1:a:0 \
    -map_metadata:g 1:g \
    -filter:v fps=$FPS \
    -vf drawtext="fontsize=50: fontfile=$FONT: \
        box=0: boxcolor=black@0.5: boxborderw=20: \
        textfile=$NP_SOURCE: reload=1: fontcolor=white@0.8: x=$POSITION_X: y=$POSITION_Y" \
    -c:v h264_nvenc -g $(($FPS * 2)) \
    -b:v $VBR \
    -f flv "$YOUTUBE_URL/$KEY"