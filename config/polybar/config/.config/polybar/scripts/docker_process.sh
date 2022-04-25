#!/bin/bash
# ~/.config/polybar/scripts/node_processe.sh
# Display the number of Node processes running
# Author: Alexandre Lamberty <mail@alexandrelamberty.com>
processes=$(docker ps | wc -l)
# Remove one line for the header from the docker ps command
echo -e $(($processes-1))
