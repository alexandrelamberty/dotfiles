#!/bin/bash
# Tmux configuration installation

PACKAGE=config
TARGET=$HOME

printf "\nVim configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.vim/"
rm -rf "$HOME/.vimrc"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE


