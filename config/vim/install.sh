#!/bin/bash
# Tmux configuration installation

PACKAGE=config
TARGET=$HOME

printf "Vim configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.vim/"
rm "$HOME/.vimrc"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE


