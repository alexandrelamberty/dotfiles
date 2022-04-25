#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "GTK configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.config/gtk-2.0"
rm -rf "$HOME/.config/gtk-3.0"
stow -vSt "$TARGET" $PACKAGE

