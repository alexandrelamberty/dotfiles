#!/bin/bash

setopt appendhistory
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
unsetopt BEEP

# Colors
autoload -Uz colors && colors

# colors for ls
if [ -f ~/.dir_colors ]; then
	eval "$(dircolors -b ~/.dir_colors)"
elif [ -f /etc/DIR_COLORS ]; then
	eval "$(dircolors -b /etc/DIR_COLORS)"
fi

