#!/bin/bash
# Transmission configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "\nTransmission configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.config/transmission/settings.json"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

