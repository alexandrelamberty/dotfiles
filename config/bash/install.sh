#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "\nBash configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.bash_profile"
rm "$HOME/.bashrc"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

