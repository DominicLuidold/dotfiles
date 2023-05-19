#!/bin/bash -e

# Copies & symlinks
echo "# Creating ssh symlinks & copying ssh config files ..."
ln -sf ~/.dotfiles/ssh/allowed_signers ~/.ssh/allowed_signers
cp -u ~/.dotfiles/ssh/config ~/.ssh/config

# External certificates
echo "# Downloading external certificates ..."
curl -fsSL https://truststore.pki.rds.amazonaws.com/eu-central-1/eu-central-1-bundle.pem > ~/.ssh/eu-central-1-bundle.pem
