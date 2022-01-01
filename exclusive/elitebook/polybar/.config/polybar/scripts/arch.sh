#!/bin/bash
#~/.config/polybar/arch.sh
#
# Return ArchLinux pacmand and AUR if any.
# Check for pacman and yay update on Arch linux distribition.
# FIXME I don't use yay anymore

if ! updates_arch=$(sudo pacman -Qu 2> /dev/null | wc -l ); then
    updates_arch=0
fi

if ! updates_aur=$(yay -Qum 2> /dev/null | wc -l); then
    updates_aur=0
fi

if [ $updates_arch -gt 0 ]; then
  arch="ARCH: %{F#f00}$updates_arch%{F-}"
fi

if [ $updates_aur -gt 0 ]; then
  aur="AUR: %{F#f00}$updates_aur"
fi

echo -e "$arch $aur"
