#!/bin/bash
# Ranger configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "Ranger configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.config/ranger/"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

