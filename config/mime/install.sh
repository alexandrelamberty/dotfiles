#!/bin/bash
# Mime configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "\nMime configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.mimeapps.list"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

