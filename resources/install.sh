#!/bin/bash
# This script will install fonts, icons, sounds and wallpapers needed
# by my dotfiles.
echo "Installing fonts, icons, sounds and Wallpapers..."
stow -t ~/.local/share/dict -S dict/
stow -t ~/.local/share/fonts -S fonts/
stow -t ~/.local/share/icons -S icons/
stow -t ~/.local/share/sounds -S sounds/
stow -t ~/.local/share/wallpapers -S wallpapers/
