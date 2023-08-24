#!/bin/bash
# Picom configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "\nPicom configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.config/picom/picom.conf"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

