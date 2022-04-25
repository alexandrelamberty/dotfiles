#!/bin/bash
# Tmux configuration installation

PACKAGE=config
TARGET=$HOME

printf "Xmodmap configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.Xmodmap"
stow -vSt "$TARGET" $PACKAGE

