#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# add notice about instructions for Docker on Ubuntu
echo "This script installs Docker based on instructions from
      https://docs.docker.com/engine/installation/linux/ubuntulinux/"


# update and make sure APT works with HTTPS and CA certificates
apt-get update -y
apt-get install -y apt-transport-https
apt-get install -y ca-certificates


# add the GPG key for Docker
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D


# add entry for Ubuntu Trusty to the docker.list file
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > '/etc/apt/sources.list.d/docker.list'


# update and make sure APT pulls from the correct repository for Docker
apt-get update -y
apt-cache policy docker-engine


# for Ubuntu Trusty, Wiley, and Xenial, `linux-image-extra` is recommended
apt-get install -y linux-image-extra-$(uname -r)  # CHROMEBOOK LINUX KERNEL TOO OLD
apt-get install -y apparmor  # required for 14.04 Trusty Tahr


# now, finally, install Docker after a quick update
apt-get update -y
apt-get install -y docker-engine
