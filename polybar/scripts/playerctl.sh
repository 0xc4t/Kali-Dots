#!/bin/bash

ICON_PLAY="󰌳"
ICON_PAUSE="󰌳" 
ICON_STOP="󰌳"
PLAYER="spotify"

STATUS=$(playerctl --player=$PLAYER status 2>/dev/null)

if [[ "$STATUS" == "Playing" ]]; then
  SYMBOL="%{F#cba6f7}$ICON_PLAY%{F-}"
elif [[ "$STATUS" == "Paused" ]]; then
  SYMBOL="%{F#cba6f7}$ICON_PAUSE%{F-}"
elif [[ "$STATUS" == "Stopped" ]]; then
  SYMBOL="%{F#cba6f7}$ICON_STOP%{F-}"
else
  echo "" && exit 0
fi

META=$(playerctl --player=$PLAYER metadata --format '{{ artist }} - {{ title }}' 2>/dev/null)

if [[ -n "$META" ]]; then
  echo "$SYMBOL $META"
else
  echo ""
fi
