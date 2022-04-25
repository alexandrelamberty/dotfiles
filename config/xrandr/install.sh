#!/bin/bash
# Tmux configuration installation

PACKAGE=config
TARGET=$HOME

printf "Xrandr configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.config/xrandr/"
stow -vSt "$TARGET" $PACKAGE

