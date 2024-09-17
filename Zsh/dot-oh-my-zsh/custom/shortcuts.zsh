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

alias lc='ls -a'
alias q='exit'
alias nv='nvim'
alias stowd='stow --dotfiles'
alias bt='bluetui'

# clipboard utility
alias clcp='xclip -sel clip'
alias clp='xclip -o'

# Tui tools
alias lg='lazygit'
alias yz='yazi'

# network management
# this alias shows avalaible network list.
alias wfnls='nmcli d w'
# Activating wifi hotspot
alias wfhp='nmcli d w hotspot ifname wlp0s20f3 ssid M2-ice-ld password ELnP1RX3PW'

# Generating 10 random character
alias grc="cat /dev/urandom | LC_ALL=C tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1"
