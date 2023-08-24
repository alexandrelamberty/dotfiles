#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "\nGit configuration installation\n"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
rm -rf "$HOME/.gitconfig" # legacy
rm -rf "$HOME/.config/git" #XDG_CONFIG
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

