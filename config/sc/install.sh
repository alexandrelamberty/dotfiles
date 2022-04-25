#!/bin/bash
# Sc configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "Sc configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.scrc"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

