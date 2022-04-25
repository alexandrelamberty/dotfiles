#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "GTK configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.config/gtk-2.0"
rm -rf "$HOME/.config/gtk-3.0"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

