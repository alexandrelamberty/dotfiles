#!/bin/bash

# This script will install fonts, icons, sounds and wallpapers needed
# by my dotfiles.
# It verify if the needed folders are present on the system.
# If not it will create theses and then copy the files to the appropriate
# locations.

# ? cp -ars  do we need to preserve attribute ?

echo "Installing fonts, icons, sounds and Wallpapers..."

# Fonts
[[ -d "$HOME/.local/share/fonts" ]] || mkdir -p "$HOME/.local/share/fonts"
if [[ -d "$HOME/.local/share/fonts" ]]; then  
    cp -rs "$PWD/fonts/" "$HOME/.local/share/"
fi

# Icons
[[ -d "$HOME/.local/share/icons" ]] || mkdir -p "$HOME/.local/share/icons"
if [[ -d "$HOME/.local/share/icons" ]]; then
  cp -rs "$PWD/icons/" "$HOME/.local/share/"
fi

# Sounds
[[ -d "$HOME/.local/share/sounds" ]] || mkdir -p "$HOME/.local/share/sounds"
if [[ -d "$HOME/.local/share/sounds" ]]; then
  cp -rs "$PWD/sounds/" "$HOME/.local/share/"
fi

# Wallpapers
[[ -d "$HOME/.local/share/wallpapers" ]] || mkdir -p "$HOME/.local/share/wallpapers"
if [[ -d "$HOME/.local/share/wallpapers" ]]; then
  cp -rs "$PWD/wallpapers/" "$HOME/.local/share/"
fi

# Dictionary
[[ -d "$HOME/.local/share/dict" ]] || mkdir -p "$HOME/.local/share/dict"
if [[ -d "$HOME/.local/share/dict" ]]; then
  cp -rs "$PWD/dict/" "$HOME/.local/dict/"
fi




