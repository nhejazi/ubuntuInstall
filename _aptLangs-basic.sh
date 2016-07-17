#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi

# install R and R-dev
echo "deb http://cran.fhcrc.org/bin/linux/ubuntu $(lsb_release -c -s)/" | sudo tee -a /etc/apt/sources.list > /dev/null  
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9  
add-apt-repository ppa:marutter/rdev
apt-get update
apt-get install r-base r-base-dev

# install Python and dependencies
add-apt-repository ppa:fkrull/deadsnakes
apt-get update
apt-get install python2.7 python3.5
apt-get install python-dev python3-dev
apt-get install python-pip python3-pip

# julia install
add-apt-repository ppa:staticfloat/juliareleases
add-apt-repository ppa:staticfloat/julia-deps
apt-get update
apt-get install julia

# force install all of the above with dependencies
apt-get install -f
echo "If any warnings appeared describing dependency errors, run this script a second time to fix."
