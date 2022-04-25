#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Sc configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.scrc"
stow -vSt "$TARGET" $PACKAGE

