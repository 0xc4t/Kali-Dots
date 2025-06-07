#!/bin/bash

IF="tun0"
ICON="%{F#cba6f7} %{F-}"
IP=$(ip addr show "$IF" 2>/dev/null | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | head -n 1)

if [[ -n "$IP" ]]; then
  echo "$ICON $IP"
else
  echo "$ICON Disconnected"
fi
