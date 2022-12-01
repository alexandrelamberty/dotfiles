#!/bin/bash
# Git Clean
# Copy remote urls
# Delete .git folder
# Init Git and add remotes

# Open the remote origin of a Git repository
if [ -d ".git" ]; then
  remote=$(git config --get remote.origin.url)
fi

sudo rm -rf ".git"
git init
git remote add origin $remote