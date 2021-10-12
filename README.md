# A Fresh Ubuntu Box [![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

> Fresh Linux setup scripts, for tweaking Ubuntu my way

---

## What is this?

Customizing fresh Linux Ubuntu boxes to my preferences.

Tested on [AWS EC2 instances](https://aws.amazon.com/marketplace/pp/B00JV9JBDS)
([Ubuntu 14.04](http://releases.ubuntu.com/14.04/)), [DigitalOcean's
droplets](https://www.digitalocean.com/products/droplets/) ([Ubuntu
20.04](https://releases.ubuntu.com/20.04/)), an [Acer Chromebook 11
C740-C4PE](http://www.acer.com/ac/en/US/content/model/NX.EF2AA.002) ([Ubuntu
14.04](http://releases.ubuntu.com/14.04/) via
[Crouton](https://github.com/dnschneid/crouton)), a dual-booting [MacBook Pro
2010 (7,1)](https://support.apple.com/kb/sp583?locale=en_US) ([Ubuntu
14.04](http://releases.ubuntu.com/14.04/) via
[rEFIt](http://refit.sourceforge.net/)), a [6th-generation ThinkPad X1 Carbon
2018](https://wiki.archlinux.org/title/Lenovo_ThinkPad_X1_Carbon_(Gen_6))
([Ubuntu 18.04](http://releases.ubuntu.com/18.04/); [Ubuntu
20.04](https://releases.ubuntu.com/20.04/)), and (soon) a [Framework
DIY](https://frame.work/laptop-diy-edition) ([Ubuntu
21.04](http://releases.ubuntu.com/21.04/)).

---

## How do I use this?

1. `sudo apt update && sudo apt upgrade`
2. `sudo apt install build-essential git`
3. `git clone https://github.com/nhejazi/ubuntu-fresh.git ~/ubuntu-fresh`
4. `sudo bash ~/ubuntu-fresh/core.sh`
5. `sudo bash ~/ubuntu-fresh/langs.sh`
6. `sudo bash ~/ubuntu-fresh/tools.sh`
7. `bash ~/ubuntu-fresh/config.sh`
8. `bash ~/ubuntu-fresh/python.sh`
9. `sudo chsh -s $(which zsh)`


---

## Package Libraries

* __[nhejazi/myPkgLib](https://github.com/nhejazi/myPkgLib)__ - a working list
    of packages, useful alongside the tools installed here. Now unmaintained and
    outdated but might still serve as a useful example.

---

## License

&copy; 2016-2021 [Nima Hejazi](https://nimahejazi.org)

The contents of this repository are distributed under the MIT license. See file
`LICENSE` for details.
