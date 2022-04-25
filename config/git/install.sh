#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Git configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.config/git"
stow -vSt "$TARGET" $PACKAGE

