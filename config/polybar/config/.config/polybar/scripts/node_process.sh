#!/bin/bash
# ~/.config/polybar/scripts/node_processe.sh
# Display the number of Node processes running
# Author: Alexandre Lamberty <mail@alexandrelamberty.com>
node_processes=$(pgrep node -c)
echo -e "$node_processes"
