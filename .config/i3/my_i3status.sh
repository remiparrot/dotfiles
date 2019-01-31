#!/bin/sh
# shell script to prepend i3status with more stuff

playing=$(ncmpcpp --current-song='%f' 2>/dev/null)

i3status -c /home/fasol/.config/i3/i3status.conf | while :
do
        read line
        echo "${playing} | $line" || exit 1
done
