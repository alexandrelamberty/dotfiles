#!/usr/bin/env bash
# ~/.config/polybar/launch.sh

# Script to launch Polybar
# Copyright (C) 2009 Alexandre Lamberty (contact@alexandrelamberty.com)
# Last revised 8/10/2019

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Start polybar -r Realod when the configuration has been modified
polybar top -r &
polybar bottom -r &