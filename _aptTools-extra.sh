#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi

# install Node
apt-get update
#NODE NODE NODE

# get the diff-so-fancy tool for `git diff`
npm install -g diff-so-fancy

# RStudio IDE install
echo -e "Downloading and installing RStudio v.0,99.902 \n PLEASE CHECK that this is the most recent stable release."
wget https://download1.rstudio.org/rstudio-0.99.902-amd64.deb
dpkg -i rstudio-0.99.902-amd64.deb

# fix installation issues arising from Atom & RStudio depedencies
apt-get install -f
echo -e "If any warnings appeared describing dependency errors, run this script a second time to fix."
