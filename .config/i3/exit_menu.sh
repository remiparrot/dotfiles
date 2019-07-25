#!/bin/bash

res=$(rofi -width 15 -lines 5 -combi-hide-mode-prefix true -dmenu < ~/.config/i3/exit_menu_opt.lst)

if [ $res = "lock" ]; then
    betterlockscreen -l
fi
if [ $res = "logout" ]; then
    i3-msg exit
fi
if [ $res = "suspend" ]; then
    systemctl suspend
fi
if [ $res = "restart" ]; then
    systemctl reboot
fi
if [ $res = "shutdown" ]; then
    systemctl poweroff
fi
exit 0
