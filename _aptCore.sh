#!/bin/bash

# get core tools with apt-get
apt-get install build-essential software-properties-common wget curl
apt-get install python-setuptools python-software-properties git ruby
apt-get install m4 apt-transport-https ca-certificates libzmq3 libzmq3-dev
apt-get install libcurl4-openssl-dev libexpat-dev libncurses-dev libbz2-dev
apt-get install libcurl4-gnutls-dev libxml2-dev libssl-dev libboost-all-dev
apt-get install libzmq5-dev libczmq-dev libgeos-dev libgdal-dev zlib1g-dev


# setup dotfiles
git clone https://github.com/nhejazi/mydotfiles.git ~/.dotfiles
sh ~/.dotfiles/_setup.sh
