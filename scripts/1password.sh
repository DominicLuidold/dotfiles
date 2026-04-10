#!/bin/bash -e

GREEN="\033[1;32m"
NO_COLOR="\033[0m"

# Install 1Password app (https://support.1password.com/install-linux/#debian-or-ubuntu)
echo -e "${GREEN}# Installing 1Password ...${NO_COLOR}"
curl -fsSL https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb -o /tmp/1password-latest.deb
sudo apt install -qqy /tmp/1password-latest.deb
1password --version

# Install 1Password CLI (https://developer.1password.com/docs/cli/get-started/#install)
echo -e "${GREEN}# Installing 1Password CLI ...${NO_COLOR}"
curl -sS https://downloads.1password.com/linux/keys/1password.asc | \
  sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg && \
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/$(dpkg --print-architecture) stable main" | \
  sudo tee /etc/apt/sources.list.d/1password.list && \
  sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/ && \
  curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | \
  sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol && \
  sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22 && \
  curl -sS https://downloads.1password.com/linux/keys/1password.asc | \
  sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg && \
  sudo apt update && sudo apt install 1password-cli
op --version
