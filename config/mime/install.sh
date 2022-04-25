#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Mime configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.mimeapps.list"
stow -vSt "$TARGET" $PACKAGE

