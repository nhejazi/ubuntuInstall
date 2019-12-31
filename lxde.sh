#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# get Lubuntu's customized LXDE and the vanilla LXDE desktop environments
sudo apt-get install -y lubuntu-desktop

# get the vanilla LXDE desktop environment
sudo apt-get install lxde
