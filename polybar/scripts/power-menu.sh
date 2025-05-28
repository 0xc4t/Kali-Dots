#!/bin/bash

choice=$(echo -e "󰒲 Sleep\n󰜉 Restart\n Poweroff" | rofi -modi "-dmenu" -show power -no-mode-indicator -p "" -theme-str '
window {
  width: 500px;
  border: 0px;
  padding: 0px;
}
mainbox {
  border: 0px;
  padding: 0px;
}
listview {
  lines: 1;
  padding: 10px;
  scrollbar: false;
  border: 0px;
  columns: 3;
  spacing: 20px;
  cycle: false;
}
element {
  padding: 10px;
  border: 0px;
}
entry {
  enabled: false;
  height: 0px;
  margin: 0px;
  padding: 0px;
  border: 0px;
}
inputbar {
    enabled: false;
}

element-text {
  font: "JetBrainsMono Nerd Font 12";
}


')

case "$choice" in
  "󰒲 Sleep") systemctl suspend ;;
  "󰜉 Restart") systemctl reboot ;;
  " Poweroff") systemctl poweroff ;;
  *) exit 0 ;;
esac
