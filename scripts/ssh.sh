#!/bin/bash -e

GREEN="\033[1;32m"
NO_COLOR="\033[0m"

# Copies & symlinks
echo -e "${GREEN}# Creating SSH symlinks & copying SSH config files ...${NO_COLOR}"
ln -sf ~/.dotfiles/ssh/allowed_signers ~/.ssh/allowed_signers
cp -u ~/.dotfiles/ssh/config ~/.ssh/config

# Download AWS RDS certificate (https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html)
echo -e "${GREEN}# Downloading AWS RDS certificate ...${NO_COLOR}"
curl -fsSL https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem > ~/.ssh/aws-global-bundle.pem
