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


# install zsh, bash/zsh completions, and oh-my-zsh
apt-get install bash-completion
apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#chsh -s $(which zsh) $(whoami)  # keep bash as the default shell for now


# setup my dotfiles
git clone https://github.com/nhejazi/mydotfiles.git ~/.dotfiles
sh ~/.dotfiles/_setup.sh
echo "Dotfiles set up as root (root privileges will be necessary to edit)."
