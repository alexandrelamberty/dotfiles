#!/bin/bash
# Nvim configuration installation

PACKAGE=config
TARGET=$HOME

printf "Live-server configuration installation\n"
stow -vDt "$TARGET" $PACKAGE
rm "$HOME/.live-server.json"
stow -vSt "$TARGET" $PACKAGE

