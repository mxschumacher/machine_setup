#!/bin/bash

# I would prefer not having to write in bash, what is a better alternative. Go?

# we have to make sure that every utility invoked in this script is available
requiredUtilities=("brightnessctl" "awk" "volnoti-show" "systemd-cat")

for str in ${requiredUtilities[@]}; do
  if ! [ -x "$(command -v "$str")" ]; then
  errorMessage="Error: "$str" is not installed. Exiting"
  echo errorMessage>&2
  echo errorMessage | systemd-cat
  exit 1
  fi
done


# increase the screen brightness by a given  percentage per tap
case "$1" in
  "up")
    brightnessctl -d "intel_backlight" s +5%
    ;;
  "down")
    brightnessctl -d "intel_backlight" s 5%-
    ;;
esac

# retrieve the current brightness in percent
LEVEL=$(brightnessctl -m -d intel_backlight | awk -F, '{print substr($4, 0, length($4)-1)}')
echo Current screen brightness: $LEVEL

# we are making sure that the svg file that volnotify-show is using exists
brightness_symbol_svg=/usr/share/pixmaps/volnoti/display-brightness-symbolic.svg
if ! [[ -f "$brightness_symbol_svg" ]]; then
    errorMessage="$brightness_symbol_svg cannot be found."
    echo $errorMessage >&2
    echo errorMessage | systemd-cat
    exit 1
fi


# send notification; make sure that volnotfi is running in the background!
volnoti-show -s /usr/share/pixmaps/volnoti/display-brightness-symbolic.svg $LEVEL