light:
			apt-get update && sudo apt-get upgrade
			apt-get install build-essential git
			git clone http://github.com/nhejazi/freshUbuntu.git
			sh $(readlink freshUbuntu)/_aptCore.sh
			sh $(readlink freshUbuntu)/_aptLangs-basic.sh
			sh $(readlink freshUbuntu)/_aptTools-basic.sh
			sh $(readlink freshUbuntu)/_aptVim.sh
			source ~/.bashrc ~/.profile

heavy:
			apt-get update && sudo apt-get upgrade
			apt-get install build-essential git
			git clone http://github.com/nhejazi/freshUbuntu.git
			sh $(readlink freshUbuntu)/_aptCore.sh
			sh $(readlink freshUbuntu)/_aptLangs-basic.sh
			sh $(readlink freshUbuntu)/_aptLangs-extra.sh
			sh $(readlink freshUbuntu)/_aptTools-basic.sh
			sh $(readlink freshUbuntu)/_aptTools-extra.sh
			sh $(readlink freshUbuntu)/_aptDocker.sh
			sh $(readlink freshUbuntu)/_aptVim.sh
			source ~/.bashrc ~/.profile

ec2:
			apt-get update && sudo apt-get upgrade
			apt-get install build-essential git ruby
			git clone http://github.com/nhejazi/freshUbuntu.git
			sh $(readlink freshUbuntu)/_aptCore.sh
			sh $(readlink freshUbuntu)/_aptLangs-basic.sh
			sh $(readlink freshUbuntu)/_aptLangs-extra.sh
			sh $(readlink freshUbuntu)/_aptDocker.sh
			sh $(readlink freshUbuntu)/_aptVim.sh
			source ~/.bashrc ~/.profile

clean: rm -rf *.deb $(readlink freshUbuntu)
