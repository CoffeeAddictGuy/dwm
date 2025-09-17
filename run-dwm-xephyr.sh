#!/bin/bash

killall Xephyr 2>/dev/null

Xephyr -br -ac -noreset -screen 1280x720 :1 &
sleep 1

DISPLAY=:1

exec ./dwm
