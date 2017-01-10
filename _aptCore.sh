#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# get core tools and libraries
apt-get install -y build-essential
apt-get install -y software-properties-common
apt-get install -y wget
apt-get install -y curl
apt-get install -y git
apt-get install -y ruby
apt-get install -y ruby-dev
apt-get install -y ruby2.0
apt-get install -y ruby2.0-dev
apt-get install -y python-setuptools
apt-get install -y python-software-properties
apt-get install -y cmake
apt-get install -y lsof
apt-get install -y m4
apt-get install -y apt-transport-https
apt-get install -y ca-certificates
apt-get install -y libzmq3
apt-get install -y libzmq3-dev
apt-get install -y libcurl4-openssl-dev
apt-get install -y libexpat-dev
apt-get install -y libncurses-dev
apt-get install -y libbz2-dev
apt-get install -y libcurl4-gnutls-dev
apt-get install -y libxml2-dev
apt-get install -y libssl-dev
apt-get install -y libboost-all-dev
apt-get install -y libzmq5-dev
apt-get install -y libczmq-dev
apt-get install -y libgeos-dev
apt-get install -y libgdal-dev
apt-get install -y zlib1g-dev
apt-get install -y libsqlite3-dev
apt-get install -y libreadline-dev
apt-get install -y libncurses5-dev
apt-get install -y libgdbm-dev
apt-get install -y libxslt1-dev
apt-get install -y libcairo-dev


# add bash completions
apt-get install -y bash-completion


# add GNU Screen
apt-get install -y screen


# add Tmux 2.0
add-apt-repository -y ppa:pi-rho/dev
apt-get update
apt-get install -y tmux=2.0-1~ppa1~t


# add The Silver Searcher
apt-get install -y silversearcher-ag


# setup my dotfiles
git clone https://github.com/nhejazi/mydotfiles.git ~/.dotfiles
sh ~/.dotfiles/_linkDots.sh
echo "Dotfiles set up under root; root privileges will be needed to edit them."


# zsh + zsh completions
apt-get install -y zsh


# get z-plug manager for zsh
curl -sL zplug.sh/installer | zsh
