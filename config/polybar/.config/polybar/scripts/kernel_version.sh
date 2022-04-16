#!/bin/bash
# ~/.config/polybar/scripts/kernel_version.sh
# Return the kernel version without the architecure part.
# Author: Alexandre Lamberty <mail@alexandrelamberty.com>
kernel=$(uname -r | awk 'BEGIN{FS="-"}{print $1}')
echo -e "$kernel"
