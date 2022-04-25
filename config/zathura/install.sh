#!/bin/bash
# Tmux configuration installation

PACKAGE=config
TARGET=$HOME

printf "Zathura configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.config/zathura/"
stow -vSt "$TARGET" $PACKAGE

