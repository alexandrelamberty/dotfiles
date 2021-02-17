#!/bin/bash
# make symlinks to ~/.local/bin/scripts

[[ -d "$HOME/.local/bin" ]] || mkdir -p "$HOME/.local/bin"
if [[ -d "$HOME/.local/bin" ]]; then
  ln -sf $PWD/src/* "$HOME/.local/bin/scripts"
fi
