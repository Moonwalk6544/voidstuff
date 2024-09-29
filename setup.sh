#!/bin/bash

cd ~
mkdir necessary
cd necessary
git clone https://github.com/void-linux/void-packages
cd void-packages
./xbps-src binary-bootstrap
cd ..
git clone https://github.com/Makrennel/hyprland-void.git
cd hyprland-void
cat common/shlibs >> ../void-packages/common/shlibs
cp -r --remove-destination srcpkgs/* ../void-packages/srcpkgs
cd ../void-packages
./xbps-src pkg hyprland
sudo xbps-install -R hostdir/binpkgs hyprland
