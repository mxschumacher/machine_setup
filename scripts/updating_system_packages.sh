#!/usr/bin/bash

yay -Qe > pacman_packages

git add pacman_packages
git commit -m "Updated list of installed packagess"
git push