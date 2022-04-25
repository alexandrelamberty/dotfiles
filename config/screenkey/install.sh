#!/bin/bash
# Screenkey configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "Screenkey configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.screenkey.json"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

