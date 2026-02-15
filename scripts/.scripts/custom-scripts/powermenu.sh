#!/usr/bin/env bash

OPTIONS="Screen Off\nSleep\nShutdown\nReboot" 
OPTION=$(echo -e "$OPTIONS" | dmenu -i -p "Power menu")

case "$OPTION" in
    "Screen Off") xset dpms force off
    ;;
    "Sleep") systemctl suspend
    ;;
    "Shutdown") systemctl poweroff
    ;;
    "Reboot") systemctl reboot
    ;;
    *) return
    ;;
esac
