#!/bin/bash
# Tmux configuration installation

PACKAGE=config
TARGET=$HOME

printf "Xinit configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.xinit"
stow -vSt "$TARGET" $PACKAGE

