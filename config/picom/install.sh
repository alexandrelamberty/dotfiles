#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Picom configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.config/picom/picom.conf"
stow -vSt "$TARGET" $PACKAGE

