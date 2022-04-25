#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Ssh configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.ssh/config/"
stow -vSt "$TARGET" $PACKAGE

