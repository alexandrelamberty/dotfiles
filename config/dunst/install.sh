#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Dunst configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.dunstrc"
stow -vSt "$TARGET" $PACKAGE

