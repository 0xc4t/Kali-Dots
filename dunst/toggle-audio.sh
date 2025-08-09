#!/bin/bash

pactl set-sink-mute @DEFAULT_SINK@ toggle

if pactl get-sink-mute @DEFAULT_SINK@ | grep -q "yes"; then
    notify-send -i "/usr/share/icons/Papirus-Dark/48x48/status/notification-audio-volume-muted.svg" \
    -u normal "Mute" -t 2000 "Dibungkam"
else
    notify-send -i "/usr/share/icons/Papirus-Dark/48x48/status/notification-audio-volume-high.svg" \
    -u normal "Audio On" -t 2000 "Suara Aktif"
fi
~/.l
