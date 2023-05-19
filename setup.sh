#!/bin/bash -e

# Install dependencies
sudo apt update -qq
sudo apt install -qqy curl

# Custom scripts
./scripts/1password.sh
./scripts/git.sh
./scripts/ssh.sh
