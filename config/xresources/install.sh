#!/bin/bash
# Xresources configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "\nXresources configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.Xresources.d/"
rm -rf "$HOME/.Xresources"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

