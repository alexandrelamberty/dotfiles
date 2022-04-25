#!/bin/bash
# MPV configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "MPV configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.config/mpv"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

