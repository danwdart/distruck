#!/bin/bash

wget -c https://raw.githubusercontent.com/tokland/arch-bootstrap/master/arch-bootstrap.sh
wget -c https://raw.githubusercontent.com/tokland/arch-bootstrap/master/get-pacman-dependencies.sh

chmod +x arch-bootstrap.sh get-pacman-dependencies.sh

sudo ./arch-bootstrap.sh -a x86_64 myarch

sudo cp arch-install.sh myarch

sudo chroot myarch /arch-install.sh

cd myarch
tar jcvf ../arch.tar.bz2 .