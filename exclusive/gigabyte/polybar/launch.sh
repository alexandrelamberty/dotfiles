#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#for m in $(polybar --list-monitors | cut -d":" -f1); do
#	MONITOR=$m polybar --reload top -c ~/.config/polybar/config & 
#	MONITOR=$m polybar --reload bottom -c ~/.config/polybar/config & 
#one
polybar --reload top -c ~/.config/polybar/config & 
polybar --reload bottom -c ~/.config/polybar/config &

#for m in $(polybar --list-monitors | cut -d":" -f1); do
#    if [ $m == 'VGA1' ] 
#    then		
#        MONITOR=$m polybar top -r & polybar bottom -r &
#    elif [ $m == 'HDMI1' ]
#    then
#        MONITOR=$m polybar top -r & polybar bottom -r &
#    else
#        MONITOR=$m polybar top -r & polybar bottom -r &
#    fi     
#Ddone
