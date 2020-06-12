#!/usr/bin/bash

echo "Writing the fish config from this repo to the current host system"
cp dotfiles/config.fish ~/.config/fish/config.fish

echo "Copying the system maintance script to my home folder"
cp scripts/system_maintenance ~