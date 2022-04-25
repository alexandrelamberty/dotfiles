#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Nitrogen configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.config/nitrogen/nitrogen.cfg"
stow -vSt "$TARGET" $PACKAGE

