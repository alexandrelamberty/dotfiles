#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Newsboat configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.newsboat/config"
rm "$HOME/.newsboat/colors"
stow -vSt "$TARGET" $PACKAGE

