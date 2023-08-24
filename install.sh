#!/bin/bash
# Link the programs configuration with Stow

printf "\n> Installing Pacman packages...\n"

printf "\n> Installing configuration files for:\n"
# TODO: replace by install.ini?
input="config-packages.txt"
while IFS= read -r package; do
  "./config/$package/install.sh"
done <"$input"

printf "\n> Installing scripts...\n"
stow -d ./bin -vSt ~ executable

printf "\n> Installing dictionaries, fonts, icons, sounds and wallpapers...\n"
stow -d ./data -vSt ~ dict
stow -d ./data -vSt ~ fonts
stow -d ./data -vSt ~ icons
stow -d ./data -vSt ~ sounds
stow -d ./data -vSt ~ wallpapers
