#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "i3 configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.config/i3"
stow -vSt "$TARGET" $PACKAGE

