#!/usr/bin/bash

# The individual configuration files live in this centralized repository. Each
# program I use has a set of default locations where it is looking for the config files
# so the copy_settings_to_system script copies them there.
# Should I just use symlinks?

echo "Writing the i3 config from this repo to the current host system"
cp dotfiles/config.i3_wm ~/.config/i3/config

echo "Writing the fish config from this repo to the current host system"
cp dotfiles/config.fish ~/.config/fish/config.fish

echo "Copying the system maintance script to my home folder"
cp scripts/system_maintenance ~

echo "Copying the Polybar configs into the .config folder on the host"
cp dotfiles/polybar/* ~/.config/polybar

echo "Copying the Alacritty configs into the .config folder on the host"
cp dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

echo "Copying the Picom configs into the .config folder on the host"
cp dotfiles/picom/picom.conf ~/.config/picom/picom.conf