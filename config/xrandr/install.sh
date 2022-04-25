#!/bin/bash
# Xrandr configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "Xrandr configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.config/xrandr/"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

