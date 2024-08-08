#!/usr/bin//env bash

# This script is intended to install basic binary packages for example git, wget ...
# Those are needed in order to install specific ones from online repos.

set -e  # Exit immediately if a command exits with a non-zero status.

# Path to the directory of common packages independantly from the distros. 
CMN_PKG="$HOME/.apps_install_src/common"

cd "${CMN_PKG}" || { echo "Failed to change directory to ${CMN_PKG}"; exit 1; }
echo "#### The working directory is ${CMN_PKG} ####"

requirements=$(find . -maxdepth 1 -name "*.txt" -type f)
src_files=$(find . -maxdepth 1 -name "*.sh" -type f)

if [[ -z "$requirements" ]]; then
    echo "#### No requirement files found. ####"
else
    echo "#### Installing requirements ####"
    while IFS= read -r requirement_file; do
        echo "#### Processing $requirement_file ####"
        while IFS= read -r package; do
            if [[ -n "$package" && ! "$package" =~ ^\s*# ]]; then
                sudo pacman -S --noconfirm "$package" || echo "#### Failed to install $package ####"
            fi
        done < "$requirement_file"
    done <<< "$requirements"
    echo "#### Requirement installation completed. ####"
fi

if [[ -z "$src_files" ]]; then
    echo "#### No script files found. ####"
else
    echo "#### Running script files ####"
    while IFS= read -r file; do
        if [[ -x "$file" ]]; then
            ./"$file" || echo "#### Failed to execute $file ####"
        else
            echo "#### Script file $file not executable. ####"
        fi
    done <<< "$src_files"
    echo "#### All scripts executed. ####"
fi
