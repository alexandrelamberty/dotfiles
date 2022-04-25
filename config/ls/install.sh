#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "Ls configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.dir_colors"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

