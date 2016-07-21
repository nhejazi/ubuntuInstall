light:
			apt-get update && sudo apt-get upgrade
			apt-get install build-essential git
			sh $(readlink -f ~/ubuntu-fresh)/_aptCore.sh
			sh $(readlink -f ~/ubuntu-fresh)/_aptLangs-basic.sh
			sh $(readlink -f ~/ubuntu-fresh)/_aptTools-basic.sh
			sh $(readlink -f ~/ubuntu-fresh)/_aptVim.sh
			source ~/.bashrc ~/.profile

heavy:
			apt-get update && sudo apt-get upgrade
			apt-get install build-essential git
			sh $(readlink -f ~/ubuntu-fresh)/_aptCore.sh
			sh $(readlink -f ~/ubuntu-fresh)/_aptLangs-basic.sh
			sh $(readlink -f ~/ubuntu-fresh)/_aptLangs-extra.sh
			sh $(readlink -f ~/ubuntu-fresh)/_aptTools-basic.sh
			sh $(readlink -f ~/ubuntu-fresh)/_aptTools-extra.sh
			sh $(readlink -f ~/ubuntu-fresh)/_aptDocker.sh
			sh $(readlink -f ~/ubuntu-fresh)/_aptVim.sh
			source ~/.bashrc ~/.profile

ec2:
			apt-get update && sudo apt-get upgrade
			apt-get install build-essential git ruby
			sh $(readlink -f ~/ubuntu-fresh)/_aptCore.sh
			sh $(readlink -f ~/ubuntu-fresh)/_aptLangs-basic.sh
			sh $(readlink -f ~/ubuntu-fresh)/_aptLangs-extra.sh
			sh $(readlink -f ~/ubuntu-fresh)/_aptDocker.sh
			sh $(readlink -f ~/ubuntu-fresh)/_aptVim.sh
			source ~/.bashrc ~/.profile
