# wrapper script for quickly installing scientific computing tools on EC2 Ubuntu

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi

apt-get update -y
apt-get upgrade -y

apt-get install -y build-essential git ruby

sh core.sh
sh langs-core.sh
sh vim.sh

# pandoc (markup conversion tool) install
echo "Installing Pandoc v.1.17.2-1 \nCHECK that this is the most recent stable release."
wget http://github.com/jgm/pandoc/releases/download/1.17.2/pandoc-1.17.2-1-amd64.deb
dpkg -i pandoc-1.17.2-1-amd64.deb

# RStudio Server install
echo "Installing RStudio Server v.1.0.44 \nCHECK that this is the most recent stable release."
apt-get install -y gdebi-core
wget https://download2.rstudio.org/rstudio-server-1.0.44-amd64.deb
gdebi rstudio-server-1.0.44-amd64.deb

