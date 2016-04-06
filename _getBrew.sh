#!/usr/bin/bash

# get Linuxbrew utility
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/linuxbrew/go/install)"

# get Linuxbrew essentials
brew update && brew upgrade
brew doctor
brew tap homebrew/science

# get core Linuxbrew tools
brew install wget coreutils zmq czmq libzmq3
brew install libsvg libxml2 gdal geos boost
