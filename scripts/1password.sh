#!/bin/bash -e

GREEN="\033[1;32m"
NO_COLOR="\033[0m"

# Install 1Password app
echo -e "${GREEN}# Installing 1Password ...${NO_COLOR}"
curl -fsSL https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb > 1password-latest.deb
sudo apt install -qqy ./1password-latest.deb
rm 1password-latest.deb

# Install 1Password CLI
echo -e "${GREEN}# Installing 1Password CLI ...${NO_COLOR}"
curl -fsSL https://downloads.1password.com/linux/debian/amd64/stable/1password-cli-amd64-latest.deb > 1password-cli-amd64-latest.deb
sudo apt install -qqy ./1password-cli-amd64-latest.deb
rm 1password-cli-amd64-latest.deb
