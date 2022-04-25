#!/bin/bash
# Tmux configuration installation

PACKAGE=config
TARGET=$HOME

printf "Vim configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.vim/"
rm "$HOME/.vimrc"
stow -vSt "$TARGET" $PACKAGE

