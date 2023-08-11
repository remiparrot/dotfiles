#!/bin/bash

res=$(rofi -width 15 -lines 5 -theme nord -combi-hide-mode-prefix true -dmenu < ~/.config/i3/exit_menu_opt.lst)

if [ $res = "lock" ]; then
    betterlockscreen -l
	#exec --no-startup-id `i3lock --image=/home/fasol/Images/wallpaper/three_pistons_lodge_by_artofjokinen-d94egqp.png`
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
