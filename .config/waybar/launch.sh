#!/bin/sh

killall waybar
pkill waybar

if [[ $USER = "dato" ]]
then
    waybar -c ~/dotfiles/.config/waybar/config.jsonc -s ~/dotfiles/.config/waybar/style.css
else
    waybar &
fi
