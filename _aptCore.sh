#!/bin/bash

# get core tools with apt-get
apt-get install build-essential software-properties-common python-setuptools 
apt-get install curl git ruby m4 apt-transport-https ca-certificates libbz2-dev
apt-get install libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev

apt-get install wget libzmq5-dev libczmq-dev
apt-get install libboost-all-dev libgeos-dev
apt-get install libgdal-dev libxml2-dev


# setup dotfiles
git clone https://github.com/nhejazi/mydotfiles.git ~/.dotfiles
sh ~/.dotfiles/_setup.sh
source ~/.bashrc ~/.profile
