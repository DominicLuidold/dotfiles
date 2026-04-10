#!/bin/bash -e

GREEN="\033[1;32m"
NO_COLOR="\033[0m"

# Install Docker engine (https://docs.docker.com/engine/install/ubuntu/)
echo -e "${GREEN}# Installing Docker ...${NO_COLOR}"
sudo apt remove $(dpkg --get-selections docker.io docker-compose docker-compose-v2 docker-doc podman-docker containerd runc | cut -f1)
sudo apt update
sudo apt install -qqy ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF
sudo apt update
sudo apt install -qqy docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world

# Manage Docker as a non-root user (https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user)
echo -e "${GREEN}# Managing Docker as non-root user ...${NO_COLOR}"
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world
