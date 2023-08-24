#!/bin/bash
# Nitrogen configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "nNitrogen configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.config/nitrogen/nitrogen.cfg"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

