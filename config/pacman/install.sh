#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Pacman configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.pacman.conf"
stow -vSt "$TARGET" $PACKAGE

