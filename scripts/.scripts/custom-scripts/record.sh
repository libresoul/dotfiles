#!/usr/bin/env bash

RATE=$(echo -e '24\n30\n60' | dmenu -i -p 'Frame Rate')
RES=$(xrandr | grep -oP '[0-9x]+(?=\s+\d.*\*)')
OUTPUT_PATH="$HOME/Videos/recording_$(date +%Y-%m-%d_%H:%M)"

[ $RATE ] && ffmpeg -f x11grab -video_size "$RES" -r "$RATE" -i $DISPLAY+0,0 -vcodec libx264 -pix_fmt yuv420p -preset fast "$PATH.mp4" || 
    echo "failed to record"
