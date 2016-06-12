#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi

# get core tools with apt-get
apt-get install build-essential software-properties-common 
apt-get install wget curl git ruby ruby-dev ruby2.0 ruby2.0-dev
apt-get install python-setuptools python-software-properties
apt-get install m4 apt-transport-https ca-certificates libzmq3 libzmq3-dev
apt-get install libcurl4-openssl-dev libexpat-dev libncurses-dev libbz2-dev
apt-get install libcurl4-gnutls-dev libxml2-dev libssl-dev libboost-all-dev
apt-get install libzmq5-dev libczmq-dev libgeos-dev libgdal-dev zlib1g-dev
apt-get install libxslt1-dev


# setup dotfiles
git clone https://github.com/nhejazi/mydotfiles.git ~/.dotfiles
sh ~/.dotfiles/_setup.sh
