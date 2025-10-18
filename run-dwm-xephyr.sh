#!/bin/bash

killall Xephyr 2>/dev/null

Xephyr -br -ac -noreset -screen 1280x720 :4 &
sleep 1


DISPLAY=:4
DISPLAY=:4 feh --bg-fill ~/wallpapers/o3twgi968xuf1.png &
DISPLAY=:4 wal --backend xrdb -i ~/wallpapers/o3twgi968xuf1.png
DISPLAY=:4 xrdb -merge ~/.cache/wal/colors.Xresources
# DISPLAY=:4 feh --bg-fill ~/wallpapers/o3twgi968xuf1.png &
# DISPLAY=:4 dwmblocks &
DISPLAY=:4 ./dwm &
