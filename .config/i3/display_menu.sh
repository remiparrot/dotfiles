#!/bin/bash

res=$(rofi -width 15 -lines 5 -combi-hide-mode-prefix true -dmenu < ~/.config/i3/display_menu_opt.lst)

if [ $res = "default" ]; then
	xrandr --output HDMI2 --off --output HDMI1 --off --output DP1 --off --output eDP1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output VIRTUAL1 --off
fi
if [ $res = "HDMI" ]; then
	xrandr --output HDMI2 --mode 1280x800 --pos 1366x0 --rotate normal --output HDMI1 --off --output DP1 --off --output eDP1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output VIRTUAL1 --off
fi
if [ $res = "HDMI-only" ]; then
	xrandr --output HDMI2 --primary --mode 1280x800 --pos 0x0 --rotate normal --output HDMI1 --off --output DP1 --off --output eDP1 --off --output VIRTUAL1 --off
fi
if [ $res = "VGA" ]; then
	xrandr --output HDMI2 --off --output HDMI1 --off --output DP1 --mode 1024x768 --pos 1366x0 --rotate normal --output eDP1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output VIRTUAL1 --off
fi
if [ $res = "VGA-only" ]; then
	xrandr --output HDMI2 --off --output HDMI1 --off --output DP1 --primary --mode 1024x768 --pos 1366x0 --rotate normal --output eDP1 --off --output VIRTUAL1 --off
fi
exit 0
