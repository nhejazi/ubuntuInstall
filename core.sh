#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
  echo "This script must be run as root"
  exit
fi


# update system before install
apt update -y
apt upgrade -y


# get core tools, languages, and libraries
apt install -y build-essential software-properties-common wget curl cmake \
  git git-email lsof m4 apt-transport-https ca-certificates autoconf
apt install -y python-setuptools python-software-properties ruby ruby-dev \
  texinfo xclip
apt install -y libzmq3 libzmq3-dev libzmq5-dev libczmq-dev libncurses-dev \
  libncurses5-dev libcurl4-openssl-dev libcurl4-gnutls-dev
apt install -y libbz2-dev libssl-dev libpng-dev liblzma-dev libpcre2-dev \
  libfreetype6-dev libsqlite3-dev libblas-dev liblapack-dev libreadline-dev \
  libboost-all-dev libfontconfig1-dev
apt install -y libexpat-dev libsdl-dev libxml2-dev libgeos-dev zlib1g-dev \
  libgdbm-dev libxslt1-dev libcairo-dev libgdal-dev libglib2.0-dev libtool


# add bash completions
apt install -y bash-completion


# add GNU Screen, mosh (mobile shell client), and Tmux v2.0
add-apt-repository -y ppa:pi-rho/dev
apt install -y screen tmux=2.0-1~ppa1~t mosh


# ssh-askpass, seahorse, and keychain management utilities (for ssh-agent)
apt install -y ssh-askpass seahorse keychain


# GPG2 for signing commits
apt install -y gnupg2


# utility for building/checking PDFs
apt install -y qpdf


# The Silver Searcher
apt install -y silversearcher-ag


# Vim and NeoVim
# NOTE: vim-nox is required for python support on Vim 8.0+ (for YCM)
add-apt-repository -y ppa:jonathonf/vim
add-apt-repository -y ppa:neovim-ppa/unstable
apt install -y vim vim-nox neovim


# user-friendly htop system monitoring
apt install -y htop


# Alacritty terminal emulator (https://github.com/jwilm/alacritty)
add-apt-repository -y ppa:mmstick76/alacritty
apt install -y alacritty


# zsh, zsh completions, and z-plug manager
apt install -y zsh
curl -sL --proto-redir -all,https \
  https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
