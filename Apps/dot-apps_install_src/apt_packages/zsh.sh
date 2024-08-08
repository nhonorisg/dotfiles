#!/usr/bin/env bash

# Z shell package installation with git sud and sud for oh-my-zsh
sudo apt install zsh git lsd -y

# oh-my-zsh framework retreiving from github
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# plugins isntallation
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use

lsd -al $ZSH_CUSTOM/plugins

# Changing default login shell to zsh
chsh -s $(which zsh)
