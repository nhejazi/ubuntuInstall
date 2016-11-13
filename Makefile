light:
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get install build-essential git
	sudo sh _aptCore.sh
	sudo sh _aptLangs-basic.sh
	sudo sh _aptTools-basic.sh
	sudo sh _aptVim.sh
	sudo sh _aptXfce.sh

heavy:
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get install build-essential git
	sudo sh _aptCore.sh
	sudo sh _aptLangs-basic.sh
	sudo sh _aptLangs-extra.sh
	sudo sh _aptTools-basic.sh
	sudo sh _aptTools-extra.sh
	sudo sh _aptDocker.sh
	sudo sh _aptVim.sh

ec2:
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get install build-essential git ruby
	sudo sh _aptCore.sh
	sudo sh _aptLangs-basic.sh
	sudo sh _aptLangs-extra.sh
	sudo sh _aptDocker.sh
	sudo sh _aptVim.sh
