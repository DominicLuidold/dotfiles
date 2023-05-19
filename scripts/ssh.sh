#!/bin/bash -e

# Copies & symlinks
echo "# Creating ssh symlinks & copying ssh config files ..."
ln -sf ~/.dotfiles/ssh/allowed_signers ~/.ssh/allowed_signers
cp -u ~/.dotfiles/ssh/config ~/.ssh/config
