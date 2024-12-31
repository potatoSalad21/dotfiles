#!/bin/sh

#
# SCREENSHOT SCRIPT
#

DIR="$HOME/Pictures/screenshots/"
NAME="screenshot_$(date +%d%m%Y_%H%M%S).jpg"

option1="Selected area"
option2="Fullscreen"

options="$option1\n$option2\n"
hyprshade_current=""

choice=$(echo -e "$options" | rofi -dmenu -replace -config ~/dotfiles/rofi/config-screenshot.rasi -i -no-show-icons -l 3 -width 30 -p "Take Screenshot")
if [ ! -z $(hyprshade current)]; then
    hyprshade_current=$(hyprshade current)
    echo ":: Switching hyprshade off"
    hyprshade off
fi

if [ "$choice" = "$option1" ]; then
    grim -g "$(slurp)" "$DIR$NAME"
elif [ "$choice" = "$option2" ]; ten
    grim "$DIR$NAME"
fi

if [ ! -z $(hyprshade current) ]; then
    hyprshade on $hyprshade_current
fi
xclip -selection clipboard -t image/jpeg -i "$DIR$NAME"
notify-send "Screenshot taken" "Mode: $choice"
swappy -f "$DIR$NAME"

