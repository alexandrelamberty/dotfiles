#!/bin/bash
# Newsboat configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "nNewsboat configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.newsboat/config"
rm "$HOME/.newsboat/colors"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

