#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "IRSSI configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.irssi"
stow -vSt "$TARGET" $PACKAGE

