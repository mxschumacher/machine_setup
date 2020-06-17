#!/usr/bin/env bash

echo "Killing existing polybar instances ..."
# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

polybar top

echo "Bars launched..."