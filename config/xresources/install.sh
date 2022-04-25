#!/bin/bash
# Xresources configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "Xresources configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.Xresources.d/"
rm "$HOME/.Xresources"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

