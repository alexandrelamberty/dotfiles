#!/bin/bash
sessions=$(tmux list-sessions | wc -l)
output="%{F#f00}$sessions%{F-}"
echo -e "$output"
