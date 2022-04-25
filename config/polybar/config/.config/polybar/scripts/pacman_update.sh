#!/bin/bash
# ~/.config/polybar/scripts/pacman_update.sh
# Display the number of Pacman updates
# Author: Alexandre Lamberty <mail@alexandrelamberty.com>
updates=$(sudo pacman -Qu 2> /dev/null | wc -l )
output="ARCH: %{F#f00}$updates%{F-}"
echo -e "$output"
