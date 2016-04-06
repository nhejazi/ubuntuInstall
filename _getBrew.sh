#!/usr/bin/bash

# get Linuxbrew utility
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/linuxbrew/go/install)"

# get Linuxbrew essentials
brew update && brew upgrade
brew doctor
brew tap caskroom/cask
brew tap homebrew/science
brew tap caskroom/fonts

# get core Linuxbrew tools
brew install wget git coreutils curl
brew install zmq czmq libzmq3
brew install libsvg libxml2 gdal geos boost
brew cask install font-fira-code font-fontawesome
