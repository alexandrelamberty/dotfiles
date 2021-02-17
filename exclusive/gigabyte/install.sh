#!/bin/bash

# This script will install the configuration files needed by i3, Polybar and Xinit.
# It verify if the needed folders are present on the system.
# If not it will create theses and then copy the files to the appropriate
# locations.

echo "Installing i3, Polybar and Xinit config for Gigabyte Z77X-D3H"

# i3
[[ -d "$HOME/.config/i3" ]] || mkdir -p "$HOME/.config/i3"
if [[ -d "$HOME/.config/i3" ]]; then
  ln -sf "$PWD/i3/config" "$HOME/.config/i3/config"
fi

# Polybar
[[ -d "$HOME/.config/polybar" ]] || mkdir -p "$HOME/.config/polybar"
if [[ -d "$HOME/.config/polybar" ]]; then
  ln -sf "$PWD/polybar/config" "$HOME/.config/polybar/config"
  ln -sf "$PWD/polybar/launch.sh" "$HOME/.config/polybar/launch.sh"
fi

# Xinit
ln -sf "$PWD/xinit/xinitrc" "$HOME/.xinitrc"