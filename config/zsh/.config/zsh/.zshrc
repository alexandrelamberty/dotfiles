#!/bin/sh
# ~/.config/zsh/zshrc
# Zsh configuration file sourced in ~/.zshrc 

# Source functions TODO: Replace with a package manager
export ZDOTDIR=$HOME/.config/zsh
source "$ZDOTDIR/functions.zsh"

# TODO: move to zenv ?
zsh_add_file "exports"
zsh_add_file "aliases"
zsh_add_file "settings"
zsh_add_file "completion.zsh"
zsh_add_file "prompt"
zsh_add_file "keybinds.zsh"
zsh_add_file "vim-mode"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"
# zsh_add_completion "esc/conda-zsh-completion" false

# NVM
# TODO: Check configuration this!!!
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
# FIXME: Doe not this need to be ZSH This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  
