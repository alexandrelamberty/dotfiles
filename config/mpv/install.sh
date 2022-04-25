#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "MPV configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.config/mpv"
stow -vSt "$TARGET" $PACKAGE

