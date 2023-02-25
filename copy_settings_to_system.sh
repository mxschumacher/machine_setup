#!/usr/bin/bash

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