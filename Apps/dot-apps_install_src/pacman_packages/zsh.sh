#!/usr/bin/env bash

# Z shell package installation with git sud and sud for oh-my-zsh
sudo pacman -S zsh 

# oh-my-zsh framework retreiving from github
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

