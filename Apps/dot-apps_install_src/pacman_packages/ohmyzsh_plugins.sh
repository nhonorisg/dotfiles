#!/usr/bin/env bash

# oh-my-zsh plugins installation
echo "#### Installing oh-my-zsh plugins ####"
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use

# Catppuccin syntax highlighting 
git clone https://github.com/catppuccin/zsh-syntax-highlighting.git
cd zsh-syntax-highlighting/themes/
cp -v catppuccin_mocha_zsh_syntax_highlighting.zsh ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/
rm -rf zsh-syntax-highlighting
