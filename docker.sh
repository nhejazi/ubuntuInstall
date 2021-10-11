#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# add notice about instructions for Docker on Ubuntu
echo "This script installs Docker based on instructions from
      https://docs.docker.com/install/linux/docker-ce/ubuntu/"


# update and make sure APT works with HTTPS and CA certificates
apt update -y
apt install -y apt-transport-https ca-certificates curl gnupg-agent


# add the official GPG key for Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -


# add the stable repository for Docker
add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"


# update and make sure APT pulls from the correct repository for Docker
apt update -y
apt install -y docker-ce docker-ce-cli containerd.io


# create a user-group for Docker and add current user to it
groupadd docker
usermod -aG docker $USER


# configure Docker to start on system boot
systemctl enable docker
