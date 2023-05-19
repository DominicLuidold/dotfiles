#!/bin/bash -e

# Install
echo "# Installing zsh ..."
sudo apt install -qq zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Dependencies
echo "# Installing zsh dependencies ..."
sudo apt install -qq fonts-powerline

# Symlinks
echo "# Creating zsh symlinks ..."
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/zsh/1password.zsh ~/.oh-my-zsh/custom/1password.zsh
ln -sf ~/.dotfiles/zsh/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
ln -sf ~/.dotfiles/zsh/settings.zsh ~/.oh-my-zsh/custom/settings.zsh
