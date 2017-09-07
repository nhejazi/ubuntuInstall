#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# install R and R-dev
echo "deb http://cran.fhcrc.org/bin/linux/ubuntu $(lsb_release -c -s)/" | sudo tee -a /etc/apt/sources.list > /dev/null  
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9  
add-apt-repository ppa:marutter/rdev
apt-get update -y
apt-get install -y r-base
apt-get install -y r-base-dev


# install Python and dependencies
add-apt-repository ppa:fkrull/deadsnakes
apt-get update -y
apt-get install -y python2.7
apt-get install -y python-dev
apt-get install -y python-pip
apt-get install -y python3.5
apt-get install -y python3-dev
apt-get install -y python3-pip


# julia install
add-apt-repository ppa:staticfloat/juliareleases
add-apt-repository ppa:staticfloat/julia-deps
apt-get update -y
apt-get install -y julia


# force install all of the above with dependencies
apt-get install -f -y
echo "If any dependency warnings appeared, run this script a second time."

