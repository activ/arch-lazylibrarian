#!/bin/bash

# exit script if return code != 0
set -e

echo Server = https://archive.archlinux.org/repos/last/\$repo/os/\$arch > /etc/pacman.d/mirrorlist

# define pacman packages
#pacman_packages="unzip unrar pygtk python2-service-identity python2-mako python2-notify gnu-netcat transmission-cli"
pacman_packages="unzip unrar gnu-netcat git python"

# install pre-reqs
pacman -Sy
pacman -S --needed $pacman_packages --noconfirm

git clone https://github.com/DobyTang/LazyLibrarian.git /opt/lazylibrarian

# call aor script (arch official repo)
#source /root/aor.sh

# cleanup
yes|pacman -Scc
rm -rf /usr/share/locale/*
rm -rf /usr/share/man/*
rm -rf /tmp/*
