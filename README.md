# Fresh Linux Ubuntu

> Customization of fresh Ubuntu installs for Chromebook with
[Crouton](https://github.com/dnschneid/crouton) and
[Linuxbrew](http://linuxbrew.sh/).

My set of customization scripts for setting Linux Ubuntu to my preferences.

**Directions/Roadmap**

Modified from a set of scripts for non-Chromebook Ubuntu - errors may persist...

First, if on ChromeOS, install Ubuntu with Crouton, using [the directions
provided
here](https://www.linux.com/learn/tutorials/795730-how-to-easily-install-ubuntu-on-chromebook-with-crouton).

### Standard setup:
1. `sudo _getBasics.sh`
2. `sh _initBrew.sh`
3. `sh _getBrew.sh`
4. `sudo _getVim.sh`
5. `sh _getCoreLangs.sh`
6. `sudo _getNoBrew.sh`
7. `sh _getCoreTools.sh`

### AWS-EC2 instances:
1. `sudo apt-get update`
2. `sudo apt-get install build-essential ruby git`
3. `git clone https://github.com/nhejazi/freshUbuntu.git`
4. `sudo ~/freshUbuntu/_getBasics.sh`
5. `sh ~/freshUbuntu/_initBrew.sh`
6. `source ~/.bashrc ~/.profile`
7. `sh ~/freshUbuntu/_getBrew.sh`
8. `sudo ~/freshUbuntu/_getVim.sh`
9. `sh ~/freshUbuntu/_getCoreLangs.sh`
10. `sudo ~/freshUbuntu/_getNoBrew.sh`
11. `rm -rf ~/freshUbuntu`

n.b., package libraries for Python, Julia, and R may be 
installed with [ezPkgs](https://github.com/nhejazi/ezPkgs).

__Updates with `brew`:__
```bash
brew update && brew upgrade && brew cleanup
```

__Updates with `apt-get`:__
```bash
sudo apt-get update && sudo apt-get upgrade
sudo apt-get autoclean && sudo apt-get autoremove
```

---

## License

&copy; 2016 Nima Hejazi

This repository is licensed under the MIT license. See `LICENSE` for details.
