#!/bin/bash

pactl set-source-mute @DEFAULT_SOURCE@ toggle


if pactl get-source-mute @DEFAULT_SOURCE@ | grep -q "yes"; then
    notify-send -i "/usr/share/icons/Papirus-Dark/48x48/status/microphone-sensitivity-muted.svg" -u normal "Mic Mute" -t 2000
else
    notify-send -i "/usr/share/icons/Papirus-Dark/48x48/status/notification-microphone-sensitivity-high.svg" -u normal "Mic On" -t 2000
fi
