#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# get core tools with apt-get
apt-get install build-essential
apt-get install software-properties-common
apt-get install wget
apt-get install curl
apt-get install git
apt-get install ruby
apt-get install ruby-dev
apt-get install ruby2.0
apt-get install ruby2.0-dev
apt-get install python-setuptools
apt-get install python-software-properties
apt-get install m4
apt-get install apt-transport-https
apt-get install ca-certificates
apt-get install libzmq3
apt-get install libzmq3-dev
apt-get install libcurl4-openssl-dev
apt-get install libexpat-dev
apt-get install libncurses-dev
apt-get install libbz2-dev
apt-get install libcurl4-gnutls-dev
apt-get install libxml2-dev
apt-get install libssl-dev
apt-get install libboost-all-dev
apt-get install libzmq5-dev
apt-get install libczmq-dev
apt-get install libgeos-dev
apt-get install libgdal-dev
apt-get install zlib1g-dev
apt-get install libsqlite3-dev
apt-get install libreadline-dev
apt-get install libncurses5-dev
apt-get install libgdbm-dev
apt-get install libxslt1-dev
apt-get install libcairo-dev


# add bash completions
apt-get install bash-completion


# add The Silver Searcher
apt-get install silversearcher-ag


# setup my dotfiles
git clone https://github.com/nhejazi/mydotfiles.git ~/.dotfiles
sh ~/.dotfiles/_linkDots.sh
echo "Dotfiles set up under root; root privileges will be needed to edit them."
