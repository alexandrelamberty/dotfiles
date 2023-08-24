#!/bin/bash
# Stow configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "\nStow configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.stow-global-ignore"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

