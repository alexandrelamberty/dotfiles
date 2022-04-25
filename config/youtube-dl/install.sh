#!/bin/bash
# Tmux configuration installation

PACKAGE=config
TARGET=$HOME

printf "Youtube-dl configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.config/youtube-dl/"
stow -vSt "$TARGET" $PACKAGE

