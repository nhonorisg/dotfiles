# This file contains aliases of commands that i use
# most of the time.
#
# Author: Honoris Ndereyimana

# Creating new file with executable permissions.
new_ex_file() {
  touch "$1" && chmod +x "$1";
}

# file creation aliases
alias t='touch' 
alias texfl='new_ex_file'
alias stowd='stow --dotfiles'
alias nv='nvim'
alias lg='lazygit'
