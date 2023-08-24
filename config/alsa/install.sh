#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "\nAlsa configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm -rf  "$HOME/.asoundrc" 
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

