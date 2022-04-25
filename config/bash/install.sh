#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "Bash configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.bash_profile"
rm "$HOME/.bash_rc"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

