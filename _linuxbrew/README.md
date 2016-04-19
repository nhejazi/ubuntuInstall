# Fresh Linux Ubuntu (v. Linuxbrew)

> Customization of fresh Ubuntu installs for Chromebook with
[Crouton](https://github.com/dnschneid/crouton) and
[Linuxbrew](http://linuxbrew.sh/).

My set of customization scripts for setting Linux Ubuntu to my preferences.

Note that this set of scripts makes heavy use of the Linuxbrew package
manager (`brew`) over Debian's Advanced Packaging Tool (e.g., `apt-get`)

This workflow has been tested on [Amazon's EC2 Ubuntu 
instances](https://aws.amazon.com/marketplace/pp/B00JV9JBDS) as well as
on my [Acer Chromebook 11 
C740-C4PE](http://www.acer.com/ac/en/US/content/model/NX.EF2AA.002) 
(running [Ubuntu Trusty](http://releases.ubuntu.com/14.04/) and an 
[XFCE desktop](http://www.xfce.org/) installed via 
[Crouton](https://github.com/dnschneid/crouton)).

**Directions/Roadmap**

First, if on ChromeOS, install Ubuntu with Crouton, using [the directions
provided
here](https://www.linux.com/learn/tutorials/795730-how-to-easily-install-ubuntu-on-chromebook-with-crouton).

### Standard (e.g., on Chromebook):
I prefer this setup when configuring Ubuntu on a permanent machine.

1. `sudo apt-get update`
2. `sudo sh ~/freshUbuntu/_getBasics.sh`
3. `sh ~/freshUbuntu/_initBrew.sh`
4. `source ~/.bashrc ~/.profile`
5. `sh ~/freshUbuntu/_getBrew.sh`
6. `sudo sh ~/freshUbuntu/_getVim.sh`
7. `sh ~/freshUbuntu/_getLangs-brew.sh`
8. `sudo sh ~/freshUbuntu/_getLangs-nobrew.sh`
9. `sh ~/freshUbuntu/_getCore.sh`
10. `rm -rf ~/freshUbuntu`

### Amazon's EC2 Ubuntu instances:
I prefer this setup when configuring fresh EC2 instances.

1. `sudo apt-get update`
2. `sudo apt-get install build-essential ruby git`
3. `git clone http://github.com/nhejazi/freshUbuntu.git`
4. `sudo sh ~/freshUbuntu/_getBasics.sh`
5. `sh ~/freshUbuntu/_initBrew.sh`
6. `source ~/.bashrc ~/.profile`
7. `sh ~/freshUbuntu/_getBrew.sh`
8. `sudo sh ~/freshUbuntu/_getVim.sh`
9. `sh ~/freshUbuntu/_getLangs-brew.sh`
10. `sudo sh ~/freshUbuntu/_getLangs-nobrew.sh`
11. `rm -rf ~/freshUbuntu`

_N.B._, package libraries for Python, Julia, R, and other tools may be 
installed with scripts from [nhejazi/ezPkgs](https://github.com/nhejazi/ezPkgs).

__Updates with `apt-get`__
```bash
sudo apt-get update && sudo apt-get upgrade
sudo apt-get autoclean && sudo apt-get autoremove
```

__Updates with `brew`__
```bash
brew update && brew upgrade && brew cleanup
```

---

## License

&copy; 2016 Nima Hejazi

This repository is licensed under the MIT license. See `LICENSE` for details.