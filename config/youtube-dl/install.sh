#!/bin/bash
# Youtube-dl configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "Youtube-dl configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.config/youtube-dl/"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

