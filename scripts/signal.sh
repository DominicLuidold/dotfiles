#!/bin/bash -e

GREEN="\033[1;32m"
NO_COLOR="\033[0m"

# Install Signal (https://signal.org/download/)
echo -e "${GREEN}# Installing Signal ...${NO_COLOR}"
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > /tmp/signal-desktop-keyring.gpg;
cat /tmp/signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
wget -O /tmp/signal-desktop.sources https://updates.signal.org/static/desktop/apt/signal-desktop.sources;
cat /tmp/signal-desktop.sources | sudo tee /etc/apt/sources.list.d/signal-desktop.sources > /dev/null
sudo apt update && sudo apt install -qqy signal-desktop
