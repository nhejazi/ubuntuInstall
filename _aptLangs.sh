#!/bin/bash

# sbt installation
#echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
#apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
#apt-get update
#apt-get install sbt

# install R and R-dev
echo "deb http://cran.fhcrc.org/bin/linux/ubuntu/$(lsb_release -c -s)/" | sudo tee -a /etc/apt/sources.list > /dev/null  
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9  
add-apt-repository -y ppa:marutter/rdev
apt-get update
apt-get upgrade
apt-get install r-base r-base-dev

# install Python and dependencies
apt-get install libbz2-dev libsqlite3-dev libreadline-dev
apt-get install zlib1g-dev libncurses5-dev libssl-dev libgdbm-dev
add-apt-repository ppa:fkrull/deadsnakes
apt-get update
apt-get upgrade
apt-get install python2.7 python3.5
apt-get install python-dev python3-dev
apt-get install python-pip python3-pip

# julia install
add-apt-repository ppa:staticfloat/juliareleases
add-apt-repository ppa:staticfloat/julia-deps
apt-get update
apt-get upgrade
apt-get install julia

# java install
apt-get install python-software-properties
add-apt-repository ppa:webupd8team/java
apt-get update
apt-get upgrade
apt-get install oracle-java8-installer

# scala install
#wget www.scala-lang.org/files/archive/scala-2.11.7.deb
#dpkg -i scala-2.11.7.deb

# force install all of the above with dependencies
apt-get install -f
