#!/bin/bash

# get Vim and NeoVim
add-apt-repository ppa:neovim-ppa/unstable
apt-get update
apt-get install vim neovim

# setup preferred configuration for Vim
if [ -e ~/.vim ]; then 
  rm -rf ~/.vim; 
fi

git clone https://github.com/nhejazi/myvimconfig.git ~/.vim
sh ~/.vim/_setup.sh
cd ~/.vim; sh _update.sh
