#!/bin/bash
# Tor configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "Tor configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.torrc"
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

