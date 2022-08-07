#!/bin/bash
# Google Chrome Flags configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "Google Chrome Flags configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

