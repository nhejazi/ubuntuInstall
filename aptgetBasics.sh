#!/bin/bash

# get core tools with apt-get
apt-get install wget libzmq5-dev libczmq-dev
apt-get install libboost-all-dev libgeos-dev
apt-get install libgdal-dev libxml2-dev

# setup dotfiles
git clone https://github.com/nhejazi/mydotfiles.git ~/.dotfiles
sh ~/.dotfiles/_setup.sh
