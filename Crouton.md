# Ubuntu on ChromeOS with _Crouton_

> Because having Ubuntu in you Chromebook makes the world a better place...

---

## Installing and Updating Ubuntu with _Crouton_

Firstly, install Ubuntu on ChromeOS with _Crouton_, using [the directions
here](https://www.linux.com/learn/tutorials/795730-how-to-easily-install-ubuntu-on-chromebook-with-crouton).

  * Download the latest _Crouton_ script [from here](https://goo.gl/fd3zc).

  * To __install__ encrypted [chroot](https://en.wikipedia.org/wiki/Chroot):
      `sudo sh ~/Downloads/crouton -r xenial -t lxde,xiwi -e`

  * To __update__ installed [chroot](https://en.wikipedia.org/wiki/Chroot):
      `sudo sh ~/Downloads/crouton -u -n xenial`

---

## Tips for Using Ubuntu with _Crouton_

  * `sudo startlxde` - starts [Lxde desktop](https://lxde.org/) in a separate
      X11-style window

  * `sudo enter-chroot -n xenial xiwi -T startlxde` - starts Lxde in a Chrome
      tab

  * `sudo enter-chroot -n xenial xiwi -T xterm` - starts xterm in a Chrome tab

  * A cheat sheet of important/useful _Crouton_ commands is [available
    here](https://github.com/dnschneid/crouton/wiki/Crouton-Command-Cheat-Sheet)

