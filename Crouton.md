# Ubuntu Linux with _Crouton_ on ChromeOS

> Because your Chromebook deserves a full Ubuntu (Linux) installation...

---

## Installing/Updating Linux with _Crouton_

Firstly, install Ubuntu on ChromeOS with _Crouton_, using [the directions
here](https://www.linux.com/learn/tutorials/795730-how-to-easily-install-ubuntu-on-chromebook-with-crouton).

  * Download the latest _Crouton_ script [from here](https://goo.gl/fd3zc).

  * `sudo sh ~/Downloads/crouton -r trusty -t xfce,xiwi -e` - install encrypted
      [chroot](https://en.wikipedia.org/wiki/Chroot)

  * `sudo sh ~/Downloads/crouton -u -n trusty` - update installed
      [chroot](https://en.wikipedia.org/wiki/Chroot)

---

## Tips for Using Ubuntu with _Crouton_

  * `sudo startxfce4` - starts the Xfce desktop in a separate X11-style window

  * `sudo enter-chroot -n trusty xiwi -T startxfce4` - start Xfce in a Chrome
      tab

  * `sudo enter-chroot -n trusty xiwi -T xterm` - start xterm app in a Chrome
      tab

  * A cheat sheet of important/useful _Crouton_ commands is [available
    here](https://github.com/dnschneid/crouton/wiki/Crouton-Command-Cheat-Sheet)
