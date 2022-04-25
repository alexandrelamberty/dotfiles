#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "Dunst configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.dunstrc"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

