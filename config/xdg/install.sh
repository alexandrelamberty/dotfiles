#!/bin/bash
# Tmux configuration installation

PACKAGE=config
TARGET=$HOME

printf "XDG configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.config/user-dirs.dirs"
rm "$HOME/.config/user-dirs.locale"
stow -vSt "$TARGET" $PACKAGE

