light:
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get install build-essential git
	sudo sh core.sh
	sudo sh langs.sh
	sudo sh tools.sh
	sudo sh nosudo.sh

heavy:
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get install build-essential git
	sudo sh core.sh
	sudo sh langs.sh
	sudo sh tools.sh
	sudo sh nosudo.sh

ec2:
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get install build-essential git ruby
	sudo sh core.sh
	sudo sh langs.sh
	sudo sh tools.sh
	sudo sh nosudo.sh

