# Fresh Linux Ubuntu [![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

> Customization of fresh Ubuntu installs (including for Chromebook with
[Crouton](https://github.com/dnschneid/crouton))

---

## Summary

My set of customization scripts for setting Linux Ubuntu to my preferences. This
is a collection of scripts that set up three different configurations of Ubuntu
machines, written specifically for machines with varying resource constraints.

This workflow has been tested on [Amazon's EC2 Ubuntu
instances](https://aws.amazon.com/marketplace/pp/B00JV9JBDS), my [Acer
Chromebook 11 C740-C4PE](http://www.acer.com/ac/en/US/content/model/NX.EF2AA.002)
(running [Ubuntu 14.04 Trusty Tahr](http://releases.ubuntu.com/14.04/) and
the [Xfce desktop environment](http://www.xfce.org/), installed via
[Crouton](https://github.com/dnschneid/crouton)), as well as a dual-boot
[MacBook Pro 2010 (7,1)](https://support.apple.com/kb/sp583?locale=en_US)
(running [Ubuntu 14.04 Trusty Tahr](http://releases.ubuntu.com/14.04/) and the
[Unity desktop environment](https://unity.ubuntu.com/),
installed via [rEFIt](http://refit.sourceforge.net/)).

---

## Directions

### Lightweight Local Setup (e.g., Chromebook w/ Crouton):
I prefer this setup when configuring Ubuntu on machines with limited resources
(e.g., on Chromebook with [Crouton](https://github.com/dnschneid/crouton)).
__For directions on installing Ubuntu on your Chromebook using _Crouton_, see
file `Crouton.md` in this repository.__

_The step-by-step procedure is given below in case any problems arise during the
installation_, for simplicity invoke the Make recipe from the provided
`Makefile` via `make light`.

1. `sudo apt-get update && sudo apt-get upgrade`
2. `sudo apt-get install build-essential git`
3. `git clone http://github.com/nhejazi/ubuntu-fresh.git ~/ubuntu-fresh`
4. `sudo sh $(readlink -f ~/ubuntu-fresh)/_aptCore.sh`
5. `sudo sh $(readlink -f ~/ubuntu-fresh)/_aptLangs-basic.sh`
6. `sudo sh $(readlink -f ~/ubuntu-fresh)/_aptTools-basic.sh`
7. `sudo sh $(readlink -f ~/ubuntu-fresh)/_aptVim.sh`

**_N.B.,_** the script `_aptXfce.sh` does not add any critical software, only
minor interface edits, thus skipping this step should have no undesirable
consequences. It is only appropriate for use with Xubuntu and the Xfce desktop
environment.


### Heavyweight Local Setup (e.g., MacBook Pro w/ rEFIt):
I prefer this setup when configuring Ubuntu on machines with fairly
unconstrained resources (e.g., on a dual-booting MacBook Pro configured with
[rEFIt](http://refit.sourceforge.net/)).

_The step-by-step procedure is given below in case any problems arise during the
installation_, for simplicity invoke the Make recipe from the provided
`Makefile` via `make heavy`.

1. `sudo apt-get update && sudo apt-get upgrade`
2. `sudo apt-get install build-essential git`
3. `git clone http://github.com/nhejazi/ubuntu-fresh.git ~/ubuntu-fresh`
4. `sudo sh $(readlink -f ~/ubuntu-fresh)/_aptCore.sh`
5. `sudo sh $(readlink -f ~/ubuntu-fresh)/_aptLangs-basic.sh`
6. `sudo sh $(readlink -f ~/ubuntu-fresh)/_aptLangs-extra.sh`
7. `sudo sh $(readlink -f ~/ubuntu-fresh)/_aptTools-basic.sh`
8. `sudo sh $(readlink -f ~/ubuntu-fresh)/_aptTools-extra.sh`
9. `sudo sh $(readlink -f ~/ubuntu-fresh)/_aptDocker.sh`
10. `sudo sh $(readlink -f ~/ubuntu-fresh)/_aptVim.sh`


### Amazon's EC2 Ubuntu Instances:
I prefer this setup when configuring fresh EC2 Ubuntu instances.

_The step-by-step procedure is given below in case any problems arise during the
installation_, for simplicity invoke the Make recipe from the provided
`Makefile` via `make ec2`.

1. `sudo apt-get update && sudo apt-get upgrade`
2. `sudo apt-get install build-essential git ruby`
3. `git clone http://github.com/nhejazi/ubuntu-fresh.git ~/ubuntu-fresh`
4. `sudo sh $(readlink -f ~/ubuntu-fresh)/_aptCore.sh`
5. `sudo sh $(readlink -f ~/ubuntu-fresh)/_aptLangs-basic.sh`
6. `sudo sh $(readlink -f ~/ubuntu-fresh)/_aptTools-extra.sh`
7. `sudo sh $(readlink -f ~/ubuntu-fresh)/_aptVim.sh`


### Updates with `apt-get`
```bash
sudo apt-get update && sudo apt-get upgrade
sudo apt-get clean && sudo apt-get autoclean && sudo apt-get autoremove
```

---

## Package Libraries

* __[nhejazi/myPkgLib](https://github.com/nhejazi/myPkgLib)__ - a working list
    of packages to be used alongside the core software in this repo.

---

## License

&copy; 2016-2017 [Nima Hejazi](http://nimahejazi.org)

The contents of this repository are distributed under the MIT license. See file
`LICENSE` for details.

