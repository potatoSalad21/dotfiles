#!/bin/sh

if pgrep -x "wf-recorder" > /dev/null; then
    pkill -INT -x wf-recorder
else
    region=$(slurp)
    if [ -n "$region" ]; then
        wf-recorder -g "$region" -a -f "$HOME/Videos/$(date +%s).mp4"
    fi
fi
