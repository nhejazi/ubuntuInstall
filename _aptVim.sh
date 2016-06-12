#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root" 1>&2
  exit 1
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

git clone https://github.com/nhejazi/myvimconfig.git ~/.vim
sh ~/.vim/_setup.sh
cd ~/.vim; sh _update.sh; cd

git clone https://github.com/nhejazi/myneovimconfig.git ~/.config/nvim
sh ~/.config/nvim/_setup.sh
