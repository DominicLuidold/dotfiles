#!/bin/bash -e

GREEN="\033[1;32m"
NO_COLOR="\033[0m"

# Install
echo -e "${GREEN}# Installing zsh ...${NO_COLOR}"
sudo apt install -qqy zsh
chsh -s $(which zsh)

if [ -d ~/.oh-my-zsh ]; then
    # Skip if Oh My Zsh is already installed
    echo -e "${GREEN}# Skipping Oh My Zsh installation - already installed${NO_COLOR}"
    exit 0
else
    # Install Oh My Zsh
    echo -e "${GREEN}# Installing Oh My Zsh ...${NO_COLOR}"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

    # Dependencies
    echo -e "${GREEN}# Installing Oh My Zsh dependencies ...${NO_COLOR}"
    sudo apt install -qqy fonts-powerline
fi

# Symlinks
echo -e "${GREEN}# Creating Oh My Zsh symlinks ...${NO_COLOR}"
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/zsh/1password.zsh ~/.oh-my-zsh/custom/1password.zsh
ln -sf ~/.dotfiles/zsh/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
ln -sf ~/.dotfiles/zsh/settings.zsh ~/.oh-my-zsh/custom/settings.zsh
