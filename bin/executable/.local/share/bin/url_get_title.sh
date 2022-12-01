#!/bin/bash
# https://www.alfredforum.com/topic/13409-shell-script-extract-title-and-url-from-chrome-tab/

# Wget an url and retrieve <title></title> tag content

url="$1"
title=$(wget -q -O - "$url" | grep -io "<title.*>*</title>" | sed -e 's/<[^>]*>//g' | head -n1)
echo $title
