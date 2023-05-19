#!/bin/bash -e

# Install 1Password app
echo "# Installing 1Password ..."
curl -fsSL https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb > 1password-latest.deb
sudo apt install -qqy ./1password-latest.deb
rm 1password-latest.deb

# Install 1Password CLI
echo "# Installing 1Password CLI ..."
curl -fsSL https://downloads.1password.com/linux/debian/amd64/stable/1password-cli-amd64-latest.deb > 1password-cli-amd64-latest.deb
sudo apt install -qqy ./1password-cli-amd64-latest.deb
rm 1password-cli-amd64-latest.deb
