#!/bin/bash

# This script will install the configuration files needed by i3, Polybar and Xinit.
# It verify if the needed folders are present on the system.
# If not it will create theses and then copy the files to the appropriate
# locations.

echo "Installing i3, Polybar and Xinit config for Gigabyte Z77X-D3H"

# i3
stow -t ~/ -S i3

# Polybar
stow -t ~/ -S polybar 

# Xinit
stow -t ~/ -S xinit 