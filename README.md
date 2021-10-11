# A Fresh Ubuntu Box [![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

> Fresh Linux setup scripts, for tweaking Ubuntu my way

---

## What is this?

My set of customization scripts for setting a fresh Linux box to my preferences.
This is a collection of scripts that flexibly allowing setting up a few
different machine configurations, written specifically to handle a variety of
resource constraints.

This workflow has been tested on [AWS EC2 Ubuntu
instances](https://aws.amazon.com/marketplace/pp/B00JV9JBDS), my old [Acer
Chromebook 11
C740-C4PE](http://www.acer.com/ac/en/US/content/model/NX.EF2AA.002) (running
[Ubuntu 14.04](http://releases.ubuntu.com/14.04/) via
[Crouton](https://github.com/dnschneid/crouton)), a dual-booting [MacBook Pro
2010 (7,1)](https://support.apple.com/kb/sp583?locale=en_US) (running [Ubuntu
14.04](http://releases.ubuntu.com/14.04/) via
[rEFIt](http://refit.sourceforge.net/)), and a [ThinkPad X1 Carbon 2018,
(6th-gen)]( https://wiki.archlinux.org/title/Lenovo_ThinkPad_X1_Carbon_(Gen_6))
(running [Ubuntu 18.04](http://releases.ubuntu.com/18.04/) then [Ubuntu
20.04](https://releases.ubuntu.com/20.04/))

---

## How do I use this?

1. `sudo apt update && sudo apt upgrade`
2. `sudo apt install build-essential git`
3. `git clone https://github.com/nhejazi/ubuntu-fresh.git ~/ubuntu-fresh`
4. `cd ~/ubuntu-fresh`
4. `sudo . ./core.sh`
5. `sudo . ./langs.sh`
6. `sudo . ./tools.sh`
7. `. ./config.sh`

---

## Package Libraries

* __[nhejazi/myPkgLib](https://github.com/nhejazi/myPkgLib)__ - a working list
    of packages, useful alongside the tools installed here. Now unmaintained but
    may be a useful example.

---

## License

&copy; 2016-2021 [Nima Hejazi](https://nimahejazi.org)

The contents of this repository are distributed under the MIT license. See file
`LICENSE` for details.
