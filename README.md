# Fresh Linux Ubuntu

> Customization of fresh Ubuntu installs for Chromebook with
[Crouton](https://github.com/dnschneid/crouton).

[![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

My set of customization scripts for setting Linux Ubuntu to my preferences.

This workflow has been tested on [Amazon's EC2 Ubuntu 
instances](https://aws.amazon.com/marketplace/pp/B00JV9JBDS) as well as
on my [Acer Chromebook 11 
C740-C4PE](http://www.acer.com/ac/en/US/content/model/NX.EF2AA.002) 
(running [Ubuntu 14.04 Trusty Tahr](http://releases.ubuntu.com/14.04/) and
the [Xfce desktop environment](http://www.xfce.org/), installed via 
[Crouton](https://github.com/dnschneid/crouton)).

---

## Directions/Roadmap

First, if on ChromeOS, install Ubuntu with Crouton, using [the directions
provided
here](https://www.linux.com/learn/tutorials/795730-how-to-easily-install-ubuntu-on-chromebook-with-crouton).
* Download the latest Crouton script [from here](https://goo.gl/fd3zc).
* `sudo sh ~/Downloads/crouton -r trusty -t xfce,xiwi -e` (install encrypted chroot)
* `sudo sh ~/Downloads/crouton -u -n trusty` (update installed chroot)

### Standard (e.g., locally on ChromeOS):
I prefer this setup when configuring Ubuntu on a permanent machine.

1. `sudo apt-get update && sudo apt-get upgrade`
2. `sudo apt-get install build-essential git`
3. `git clone http://github.com/nhejazi/freshUbuntu.git`
4. `sudo sh ~/freshUbuntu/_aptCore.sh`
5. `sudo sh ~/freshUbuntu/_aptTools.sh`
6. `sudo sh ~/freshUbuntu/_aptLangs.sh`
7. `sudo sh ~/freshUbuntu/_aptVim.sh`
8. `source ~/.bashrc ~/.profile`
9. `rm -rf ~/freshUbuntu`

**_note:_** the scripts `_aptLangs.sh` and `_aptTools.sh` do
not install updated versions of desired tools on initial runs
if/when there are missing dependencies. Running these scripts
a second time fixes this issue (a message to this effect is
provided to the user when these scripts are run).


### Amazon's EC2 Ubuntu instances:
I prefer this setup when configuring fresh EC2 instances.

_N.B._, slight differences from directions given above.

1. `sudo apt-get update && sudo apt-get upgrade`
2. `sudo apt-get install build-essential git ruby`
3. `git clone http://github.com/nhejazi/freshUbuntu.git`
4. `sudo sh ~/freshUbuntu/_aptCore.sh`
5. `sudo sh ~/freshUbuntu/_aptLangs.sh`
6. `sudo sh ~/freshUbuntu/_aptVim.sh`
7. `source ~/.bashrc ~/.profile`

_N.B._, package libraries for R, Python, Julia, and other standard tools may be 
set up via scripts from [nhejazi/myPkgLib](https://github.com/nhejazi/myPkgLib).

__Updates with `apt-get`__
```bash
sudo apt-get update && sudo apt-get upgrade
sudo apt-get autoclean && sudo apt-get autoremove
```

---

## License

&copy; 2016 Nima Hejazi

This repository is licensed under the MIT license. See `LICENSE` for details.
