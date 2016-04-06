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

### New list
1. `sudo _getBasics.sh` (requires `sudo` for `apt-get`)
2. `sh _getBrew.sh`
3. `sh _getMyVim.sh`
4. `sh _getCoreTools.sh`
5. `sh _getHammerspoon.sh`
6. `sh _getShellConfig.sh`
7. `sh _getCoreLangs.sh`

n.b., `_getNeovim.sh` is DEPRECATED in favor of `brew`


### Old list
1. sudo initial\_apt\_get.sh - Install all of the basics
2. configure\_git.sh
3. configure\_bash.sh - Set up bash prompt and universal aliases
4. sudo install\_sun\_java.sh - Requires user interaction
5. sudo qt\_dependencies.sh
6. sudo root\_dependencies.sh - Pulls >100 Mb from internet
7. sudo sis\_dependencies.sh
8. sudo apt-get install qt-sdk - Pulls > 250 Mb from internet
9. sudo python\_install.sh - Pulls > 350 Mb from internet
10. sudo python\_upgrade.sh - Scipy takes a real long time to compile
11. sudo install\_ros.sh
11. install\_rgbdslamv2.sh
12. sudo install\_latex.sh - Pulls > 1Gb from internet (_avoid on Chromebook_)
13. install\_root.sh - no sudo
13. sudo install\_sis.sh - Only works in 12.04
14. vim\_upgrade.sh

__For Updates (with `brew`):__
```bash
brew update && brew upgrade && brew cleanup
```

__For Updates (with `apt-get`):__
```bash
sudo apt-get update && sudo apt-get upgrade
sudo apt-get autoclean && sudo apt-get autoremove
```
