#!/bin/bash

# where should I write an error message to the system? Ideally with systemd I suppose

# bindsym XF86AudioMute exec --no-startup-id "amixer set Master toggle && if amixer get Master | rg -F '[off]'; then volnoti-show --mute; else volnoti-show $(amixer get Master | rg -Po '[0-9]+(?=%)' | head -1); fi"

case "$1" in

  "up")
    pactl set-sink-volume 0 +5%
    ;;
  "down")
    pactl set-sink-volume 0 -5%
    ;;
esac

# be sure that ripgrep (rg) is installed, otherwise the rg command will fail silently.
current_volume=$(amixer get Master | rg -Po '[0-9]+(?=%)' | head -1)

# make sure that volnotify is running!
volnoti-show $current_volume


  # "toggle-mute")
  #   amixer set Master toggle

  #   if [[ -z amixer get Master | rg -F '[off]']]; then
  #     volnoti-show --mute
  #     exit