#!/usr/bin/bash

# get Vim
brew update
brew install vim
brew install neovim/neovim/neovim

# setup preferred configuration for Vim and MacVim
if [ -e ~/.vim ]; then 
  rm -rf ~/.vim; 
fi

git clone git@github.com:nhejazi/myvimconfig.git ~/.vim
sh ~/.vim/_setup.sh
cd ~/.vim; sh _update.sh
