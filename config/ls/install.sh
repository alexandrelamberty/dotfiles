#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Ls configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.dir_colors"
stow -vSt "$TARGET" $PACKAGE

