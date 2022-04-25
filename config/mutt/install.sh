#!/bin/bash
# Mutt configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "Mutt configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.config/mutt/muttrc"
rm "$HOME/.config/mutt/colors"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

