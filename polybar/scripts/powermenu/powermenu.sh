#!/bin/env bash

lock=""
logout=""
shutdown=""
reboot="󰜉"
sleep=""

selected_option=$(echo "$lock
$logout
$reboot
$sleep
$shutdown" | rofi -dmenu\
                  -i\
                  -p "Power"\
		  -theme "/home/xc4t/.config/rofi/powermenu/powermenu.rasi")

if [ "$selected_option" == "$lock" ]
then
    i3lock --blur=5 \
       --inside-color=00000000 \
       --ring-color=cba6f7 \
       --line-color=00000000 \
       --keyhl-color=cba6f7 \
       --ringver-color=cba6f7 \
       --insidever-color=0000001c \
       --ringwrong-color=f38ba8 \
       --insidewrong-color=0000001c \
       --bshl-color=f38ba8 \
       --separator-color=00000000 \
       --clock --time-color=ffffff --date-color=ffffff \
       --time-font="JetBrains Mono" --date-font="JetBrains Mono" \

elif [ "$selected_option" == "$logout" ]
then
    i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -f 'pango:JetBrainsMono Nerd Font Bold 9' -B 'Yes, exit i3' 'i3-msg exit'
elif [ "$selected_option" == "$shutdown" ]
then
    doas systemctl poweroff
elif [ "$selected_option" == "$sleep" ]
then
    doas systemctl suspend
else
    echo "No match"
fi
