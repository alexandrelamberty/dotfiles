#!/bin/bash
# This script will install my custom scripts.
echo "Installing scripts"
stow -t ~/.local/bin/scripts/ -S src
