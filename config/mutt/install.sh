#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Mutt configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.config/mutt/muttrc"
rm "$HOME/.config/mutt/colors"
stow -vSt "$TARGET" $PACKAGE

