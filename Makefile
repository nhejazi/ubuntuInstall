light:
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get install build-essential git
	sudo sh core.sh
	sudo sh langs-core.sh
	sudo sh tools-core.sh
	sudo sh vim.sh

heavy:
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get install build-essential git
	sudo sh core.sh
	sudo sh langs-core.sh
	sudo sh langs-extra.sh
	sudo sh tools-core.sh
	sudo sh tools-extra.sh
	sudo sh docker.sh
	sudo sh vim.sh

ec2:
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get install build-essential git ruby
	sudo sh core.sh
	sudo sh langs-core.sh
	sudo sh tools-core.sh
	sudo sh vim.sh

