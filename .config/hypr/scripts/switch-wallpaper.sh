#!/bin/sh

# check if the daemon is running
PROCESS_COUNT=$(ps -ef | grep -v grep | grep -cw awww-daemon)

if [ $PROCESS_COUNT -eq 0 ]; then
    echo ":: awww daemon not running"
    echo ":: starting the awww daemon"
    awww-daemon &
fi

awww img $1 && wal -i $1
