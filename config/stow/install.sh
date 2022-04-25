#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Stow configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.stow-global-ignore"
stow -vSt "$TARGET" $PACKAGE

