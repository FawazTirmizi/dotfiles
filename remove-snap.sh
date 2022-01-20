#!/bin/bash

rm -rf /var/cache/snapd/

apt autoremove --purge snapd gnome-software-plugin-snap

rm -fr ~/snap

apt-mark hold snapd
