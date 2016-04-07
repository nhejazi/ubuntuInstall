#!/usr/bin/bash

# get Linuxbrew essentials
brew update && brew upgrade
brew doctor
brew tap homebrew/science

# get core Linuxbrew tools
brew install wget coreutils zmq czmq
brew install libsvg libxml2 gdal geos boost
