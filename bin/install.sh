#!/bin/bash
# Nvim configuration installation

PACKAGE=executable
TARGET=$HOME
DIR="$(dirname "$0")"

printf "Common user-specific executables installation\n"
rm -rf "~/.local/share/bin"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

