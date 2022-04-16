#!/bin/bash
# ~/.config/polybar/scripts/tmux_session.sh
# Display the number of Tmux sessions
# Author: Alexandre Lamberty <mail@alexandrelamberty.com>
sessions=$(tmux ls 2>/dev/null | wc -l)
echo -e "$sessions"
