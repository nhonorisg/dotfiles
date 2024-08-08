#!/usr/bin/env bash

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Y --gendb 
yay -Syu --devel
yay -Y --devel --save

if [ $? -eq 0 ]; then
  rm -rf ./yay
fi

