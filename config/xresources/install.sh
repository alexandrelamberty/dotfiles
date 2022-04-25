#!/bin/bash
# Tmux configuration installation

PACKAGE=config
TARGET=$HOME

printf "Xresources configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.Xresources.d/"
rm "$HOME/.Xresources"
stow -vSt "$TARGET" $PACKAGE

