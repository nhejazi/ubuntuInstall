#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
  echo "This script must be run as root"
  exit
fi


# update system before install
apt-get update


# get core tools, languages, and libraries
apt-get install -y build-essential software-properties-common wget curl git \
  cmake lsof m4 apt-transport-https ca-certificates autoconf
apt-get install -y python-setuptools python-software-properties ruby ruby-dev \
  ruby2.0 ruby2.0-dev texinfo xclip
apt-get install -y libzmq3 libzmq3-dev libzmq5-dev libczmq-dev libncurses-dev \
  libncurses5-dev libcurl4-openssl-dev libcurl4-gnutls-dev
apt-get install -y libbz2-dev libssl-dev libpng-dev liblzma-dev libpcre2-dev \
  libfreetype6-dev libsqlite3-dev libblas-dev liblapack-dev libreadline-dev \
  libboost-all-dev libfontconfig1-dev
apt-get install -y libexpat-dev libsdl-dev libxml2-dev libgeos-dev zlib1g-dev \
  libgdbm-dev libxslt1-dev libcairo-dev libgdal-dev libglib2.0-dev libtool


# add bash completions
apt-get install -y bash-completion


# add GNU Screen, mosh (mobile shell client), and Tmux v2.0
add-apt-repository -y ppa:pi-rho/dev
apt-get install -y screen tmux=2.0-1~ppa1~t mosh


# utility for building/checking PDFs
apt-get install -y qpdf


# add The Silver Searcher
apt-get install -y silversearcher-ag


# setup my dotfiles
git clone https://github.com/nhejazi/mydotfiles.git ~/.dotfiles
sh ~/.dotfiles/_linkDots.sh
echo "Dotfiles set up under root; root privileges will be needed to edit them."


# zsh, zsh completions, and z-plug manager
apt-get install -y zsh
curl -sL --proto-redir -all,https \
  https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

