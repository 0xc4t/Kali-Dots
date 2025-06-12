#!/bin/bash

ICON="󰌳"
PLAYER="spotify"

if ! pgrep -x "$PLAYER" > /dev/null; then
  echo "%{F#cba6f7}$ICON%{F-} Spotify No Played"
  exit 0
fi

STATUS=$(playerctl --player=$PLAYER status 2>/dev/null)

SYMBOL="%{F#cba6f7}$ICON%{F-}"

META=$(playerctl --player=$PLAYER metadata --format '{{ artist }} - {{ title }}' 2>/dev/null)

MAXLEN=30
if [[ ${#META} -gt $MAXLEN ]]; then
  META="${META:0:$MAXLEN}..."
fi

echo "$SYMBOL $META"
