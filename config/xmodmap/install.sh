#!/bin/bash
# Xmodmap configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "\nXmodmap configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.Xmodmap"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

