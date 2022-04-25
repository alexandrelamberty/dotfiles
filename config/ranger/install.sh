#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Ranger configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.config/ranger/"
stow -vSt "$TARGET" $PACKAGE

