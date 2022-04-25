#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Polybar configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.config/polybar/"
stow -vSt "$TARGET" $PACKAGE

