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
apt-get install -y r-base r-base-dev


# install Python 3.6, dependencies, and pip
## NOTE: this results in pip, pip3, and pip3.6 all targeting python 3.6
add-apt-repository ppa:deadsnakes/ppa
apt-get update -y
apt-get install -y python3.6 python3.6-dev python3.6-venv
curl https://bootstrap.pypa.io/get-pip.py | sudo python3.6


# force install all of the above with dependencies
apt-get install -f -y
echo "If any dependency warnings appeared, run this script a second time."

