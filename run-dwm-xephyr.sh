#!/bin/bash

killall Xephyr 2>/dev/null

Xephyr -br -ac -noreset -screen 1280x720 :1 &
sleep 1

DISPLAY=:1
DISPLAY=:1 feh --bg-fill ~/wallpapers/test.jpg &
DISPLAY=:1 dwmblocks &
DISPLAY=:1 ./dwm &
