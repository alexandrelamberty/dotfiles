#!/bin/bash
# ~/.config/polybar/scripts/node_processe.sh
# Display the number of Node processes running
# Author: Alexandre Lamberty <mail@alexandrelamberty.com>
processes=$(pgrep chrome -c)
echo -e "$processes"
