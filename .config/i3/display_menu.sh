#!/bin/bash

res=$(rofi -theme ~/.config/rofi/applets/type-1/style-2 -theme-str 'prompt { enabled: false; } inputbar { enabled: false; }' -combi-hide-mode-prefix true -dmenu < ~/.config/i3/display_menu_opt.lst)

#if [ $res = "default" ]; then
#	xrandr --output HDMI2 --off --output HDMI1 --off --output DP1 --off --output eDP1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output VIRTUAL1 --off
#fi
#if [ $res = "HDMI" ]; then
#	xrandr --output eDP1 --primary --mode 1366x768 --pos 277x1080 --rotate normal --output DP1 --off --output HDMI1 --off --output HDMI2 --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
#fi
#if [ $res = "HDMI-only" ]; then
#	xrandr --output HDMI2 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI1 --off --output DP1 --off --output eDP1 --off --output VIRTUAL1 --off
#fi
#if [ $res = "VGA" ]; then
#	xrandr --output HDMI2 --off --output HDMI1 --off --output DP1 --mode 1920x1080 --pos 1366x0 --rotate normal --output eDP1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output VIRTUAL1 --off
#fi
#if [ $res = "VGA-only" ]; then
#	xrandr --output HDMI2 --off --output HDMI1 --off --output DP1 --primary --mode 1920x1080 --pos 1366x0 --rotate normal --output eDP1 --off --output VIRTUAL1 --off
#fi
if [ $res = "primary-only" ]; then
	mons -o
fi
if [ $res = "top-extend" ]; then
	mons -e top
fi
if [ $res = "duplicate" ]; then
	mons -d
fi
if [ $res = "second-only" ]; then
	mons -s
fi
if [ $res = "custom-office" ]; then
	xrandr --output eDP1 --primary --mode 1920x1080 --pos 760x1440 --rotate normal --output DP1 --off --output DP2 --off --output HDMI1 --off --output HDMI2 --mode 3440x1440 --pos 0x0 --rotate normal --output VIRTUAL1 --off
fi
exit 0
