#!/bin/bash
# Xinit configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "\nXinit configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.xinitrc"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

