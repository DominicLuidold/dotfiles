#!/bin/bash -e

# Dependencies
echo "# Installing Git dependencies ..."
sudo apt install -qqy vim

# Copies & symlinks
echo "# Copying Git config files ..."
cp -u ~/.dotfiles/git/.gitconfig ~/.gitconfig
