#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Bash configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.bash_profile"
rm "$HOME/.bash_rc"
stow -vSt "$TARGET" $PACKAGE

