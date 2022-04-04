#!/bin/bash

# This script will install the configuration files needed by i3, Polybar and
# Xinit. 
echo "Installing i3, Polybar and Xinit config for HP EliteBook 2540p"
stow -t ~ -S i3 polybar xinit
