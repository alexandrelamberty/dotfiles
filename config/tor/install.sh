#!/bin/bash
# Tmux configuration installation

PACKAGE=config
TARGET=$HOME

printf "Tor configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.torcc"
stow -vSt "$TARGET" $PACKAGE

