# wrapper script for quickly installing scientific computing tools on EC2 Ubuntu

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi

apt-get update
apt-get upgrade

apt-get install build-essential git ruby

sh _aptCore.sh
sh _aptLangs-basic.sh
sh _aptTools-extra.sh
sh _aptVim.sh
