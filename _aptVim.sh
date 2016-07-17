#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi

# get Vim and NeoVim
add-apt-repository ppa:neovim-ppa/unstable
apt-get update
apt-get upgrade
apt-get install vim neovim

# setup preferred configuration for Vim
if [ -e ~/.vim ]; then 
  rm -rf ~/.vim; 
fi

# get and setup config files for using Vim
git clone --recursive https://github.com/nhejazi/myvimconfig.git ~/.vim
sh ~/.vim/_setup.sh

# get and setup config files for using Neovim
git clone https://github.com/nhejazi/myneovimconfig.git ~/.config/nvim
sh ~/.config/nvim/_setup.sh
