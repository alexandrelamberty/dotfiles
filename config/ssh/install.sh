#!/bin/bash
# Ssh configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "\nSsh configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.ssh/config/"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

