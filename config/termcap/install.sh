#!/bin/bash
# Termcap configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "\nTermcap configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.LESS_TERMCAP"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

