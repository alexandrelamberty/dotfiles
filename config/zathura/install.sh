#!/bin/bash
# Tmux configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "\nZathura configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.config/zathura/"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

