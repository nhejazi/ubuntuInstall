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
2. `sh _getBrew.sh`
3. `sh _getMyVim.sh`
4. `sh _getCoreTools.sh`
5. `sh _getCoreLangs.sh`

n.b., `_getNeovim.sh` is DEPRECATED in favor of `brew`

### AWS instances:
1. `sudo apt-get update`
2. `sudo apt-get install build-essential software-properties-common texinfo 
   ruby git`
3. `git clone https://github.com/nhejazi/freshUbuntu.git`
4. `sh ~/freshUbuntu/_getBrew1.sh`
5. `source ~/.bashrc ~/.profile`
6. `sh ~/freshUbuntu/_getBrew2.sh`
7. `sh ~/freshUbuntu/_getCoreLangs.sh`
8. `rm -rf ~/freshUbuntu`
9. install packages with [ezPkgs](https://github.com/nhejazi/ezPkgs)

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
