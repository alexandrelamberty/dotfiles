#!/bin/bash
#~/.config/polybar/arch.sh

if ! updates_arch=$(sudo pacman -Qu 2> /dev/null | wc -l ); then
    updates_arch=0
fi

if [ $updates_arch -gt 0 ]; then
  arch="ARCH: %{F#f00}$updates_arch%{F-}"
fi

echo -e "$arch"
