#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Alsa configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.asoundrc"
stow -vSt "$TARGET" $PACKAGE

