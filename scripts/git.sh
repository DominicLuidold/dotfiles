#!/bin/bash -e

GREEN="\033[1;32m"
NO_COLOR="\033[0m"

# Dependencies
echo -e "${GREEN}# Installing Git dependencies ...${NO_COLOR}"
sudo apt install -qqy vim

# Copies & symlinks
echo -e "${GREEN}# Copying Git config files ...${NO_COLOR}"
cp -u ~/.dotfiles/git/.gitconfig ~/.gitconfig
