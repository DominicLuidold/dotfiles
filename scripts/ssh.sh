#!/bin/bash -e

GREEN="\033[1;32m"
NO_COLOR="\033[0m"

# Copies & symlinks
echo -e "${GREEN}# Creating ssh symlinks & copying ssh config files ...${NO_COLOR}"
ln -sf ~/.dotfiles/ssh/allowed_signers ~/.ssh/allowed_signers
cp -u ~/.dotfiles/ssh/config ~/.ssh/config

# External certificates
echo -e "${GREEN}# Downloading external certificates ...${NO_COLOR}"
curl -fsSL https://truststore.pki.rds.amazonaws.com/eu-central-1/eu-central-1-bundle.pem > ~/.ssh/eu-central-1-bundle.pem
