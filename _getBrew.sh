#!/usr/bin/bash

# get Linuxbrew utility
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/linuxbrew/go/install)"

# setup dotfiles
git clone https://github.com/nhejazi/mydotfiles.git ~/.dotfiles
sh ~/.dotfiles/_setup.sh
source ~/.bashrc

# get Linuxbrew essentials
brew update && brew upgrade
brew doctor
brew tap homebrew/science

# get core Linuxbrew tools
brew install wget coreutils zmq czmq
brew install libsvg libxml2 gdal geos boost
