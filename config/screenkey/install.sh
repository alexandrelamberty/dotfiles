#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Screenkey configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.screenkey.json"
stow -vSt "$TARGET" $PACKAGE

