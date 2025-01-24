#!/bin/sh

# check if the daemon is running
PROCESS_COUNT=$(ps -ef | grep -v grep | grep -cw swww-daemon)

if [ $PROCESS_COUNT -eq 0 ]; then
    echo ":: swww daemon not running"
    echo ":: starting the swww daemon"
    swww-daemon &
fi

DIR="~/Pictures/wallpapers/"
wallpapers=()

for file in "$DIR"/*
do
    wallpapers += file
done



