#!/bin/bash
# XDG configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "XDG configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm "$HOME/.config/user-dirs.dirs"
rm "$HOME/.config/user-dirs.locale"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

