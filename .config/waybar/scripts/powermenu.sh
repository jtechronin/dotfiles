#!/bin/bash

chosen=$(echo -e "Выключение\nПерезагрузка\nВыход из Sway" | wofi --dmenu --prompt "Выход")

case "$chosen" in
    "Выключение") systemctl poweroff ;;
    "Перезагрузка") systemctl reboot ;;
    "Выход из Sway") swaymsg exit ;;
    *) exit 1 ;;
esac
