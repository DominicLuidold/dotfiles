#!/bin/bash -e

GREEN="\033[1;32m"
NO_COLOR="\033[0m"

# Install dependencies
echo -e "${GREEN}# Installing general dependencies ...${NO_COLOR}"
sudo apt update -qq
sudo apt install -qqy curl

# Custom scripts
./scripts/1password.sh
./scripts/git.sh
./scripts/ssh.sh
./scripts/zsh.sh
