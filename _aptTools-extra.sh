#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# Pandoc (markup tool) install
echo "Downloading and installing Pandoc v.1.17.1-2 \n PLEASE CHECK that this is the most recent stable release."
wget http://github.com/jgm/pandoc/releases/download/1.17.1/pandoc-1.17.1-2-amd64.deb
dpkg -i pandoc-1.17.1-2-amd64.deb


# RStudio IDE install
echo "Downloading and installing RStudio v.0,99.902 \n PLEASE CHECK that this is the most recent stable release."
wget https://download1.rstudio.org/rstudio-0.99.902-amd64.deb
dpkg -i rstudio-0.99.902-amd64.deb


# add some global tools from Node.js
npm install -g diff-so-fancy  #much prettier git diffs
npm install -g how2  #use StackOverflow from command line


# add SSH tools for remote access
#apt-get install openssh-server


# add command line tools for Genomics
apt-get install samtools  #for genomic alignments
apt-get install bedtools  #for genomic annotation


# fix installation issues arising from dependencies
apt-get install -f
echo "If any warnings appeared describing dependency errors, run this script a second time to fix."