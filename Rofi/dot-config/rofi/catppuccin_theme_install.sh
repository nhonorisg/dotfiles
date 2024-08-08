#!/usr/bin/env bash

# Credit to: Srm-Akla.
# Edited by: Honoris Ndereyimana.

# This script downloads the catppuccin theme used by rofi.

ROFI_CONFIG="$HOME/.config/rofi"
USER_ROFI_THEMES="$HOME/.local/share/rofi/themes"

if [[ ! -d "$ROFI_CONFIG" ]]; then
  echo "#### Creating rofi config directory ####"
  mkdir -p "$ROFI_CONFIG"
elif [[ ! -d "$USER_ROFI_THEMES"  ]]; then
  echo "#### Creating rofi user themes directory ####"
  mkdir -p "$USER_ROFI_THEMES"
fi

if [[ -f "$ROFI_CONFIG/config.rasi" ]]; then
  echo "#### Backing up the last rofi config ####"
  cp "$ROFI_CONFIG/config.rasi" "$ROFI_CONFIG/config.rasi.bak"  
fi


cd "$ROFI_CONFIG"
pwd
curl -LO https://raw.githubusercontent.com/catppuccin/rofi/main/basic/.config/rofi/config.rasi

cd "$USER_ROFI_THEMES"
pwd
curl -LO https://raw.githubusercontent.com/catppuccin/rofi/main/basic/.local/share/rofi/themes/catppuccin-frappe.rasi
curl -LO https://raw.githubusercontent.com/catppuccin/rofi/main/basic/.local/share/rofi/themes/catppuccin-macchiato.rasi
curl -LO https://raw.githubusercontent.com/catppuccin/rofi/main/basic/.local/share/rofi/themes/catppuccin-mocha.rasi

