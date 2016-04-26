# Fresh Linux Ubuntu

> Customization of fresh Ubuntu installs for Chromebook with
[Crouton](https://github.com/dnschneid/crouton).

My set of customization scripts for setting Linux Ubuntu to my preferences.

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
* Download the latest Crouton script [from here](https://goo.gl/fd3zc).
* `sudo sh ~/Downloads/crouton -r trusty -t xfce,xiwi -e` (install encrypted chroot)
* `sudo sh ~/Downloads/crouton -u -n trusty` (update installed chroot)

### Standard (e.g., on Chromebook):
I prefer this setup when configuring Ubuntu on a permanent machine.

1. `sudo apt-get update`
2. `sudo apt-get install build-essential git`
3. `git clone http://github.com/nhejazi/freshUbuntu.git`
4. `sudo sh ~/freshUbuntu/_aptCore.sh`
5. `sudo sh ~/freshUbuntu/_aptTools.sh`
6. `sudo sh ~/freshUbuntu/_aptLangs.sh`
7. `sudo sh ~/freshUbuntu/_aptVim.sh`
8. `source ~/.bashrc ~/.profile`
9. `rm -rf ~/freshUbuntu`

### Amazon's EC2 Ubuntu instances:
I prefer this setup when configuring fresh EC2 instances.

_N.B._, slight differences from directions given above.

1. `sudo apt-get update`
2. `sudo apt-get install build-essential ruby git`
3. `git clone http://github.com/nhejazi/freshUbuntu.git`
4. `sudo sh ~/freshUbuntu/_aptCore.sh`
5. `sudo sh ~/freshUbuntu/_aptLangs.sh`
6. `sudo sh ~/freshUbuntu/_aptVim.sh`
7. `source ~/.bashrc ~/.profile``

_N.B._, package libraries for Python, Julia, R, and other tools may be 
installed with scripts from [nhejazi/ezPkgs](https://github.com/nhejazi/ezPkgs).

__Updates with `apt-get`__
```bash
sudo apt-get update && sudo apt-get upgrade
sudo apt-get autoclean && sudo apt-get autoremove
```

---

## License

&copy; 2016 Nima Hejazi

This repository is licensed under the MIT license. See `LICENSE` for details.
