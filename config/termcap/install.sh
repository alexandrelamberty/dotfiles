#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Termcap configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.LESS_TERMCAP"
stow -vSt "$TARGET" $PACKAGE

