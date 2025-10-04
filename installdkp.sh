#!/usr/bin/env bash
if ! [ $(id -u) = 0 ]; then
  echo "Need root privilege to install!"
  exit 1
fi

# ensure apt is set up to work with https sources
apt-get install apt-transport-https

# Store devkitPro gpg key locally if we don't have it already
if ! [ -f /usr/local/share/keyring/devkitpro-pub.gpg ]; then
  mkdir -p /usr/local/share/keyring/
  cp devkitpro-pub.gpg /usr/local/share/keyring/devkitpro-pub.gpg
fi


# Add the devkitPro apt repository if we don't have it set up already
if ! [ -f /etc/apt/sources.list.d/devkitpro.list ]; then
  echo "deb [signed-by=/usr/local/share/keyring/devkitpro-pub.gpg] https://apt.devkitpro.org stable main" > /etc/apt/sources.list.d/devkitpro.list
fi

# Finally install devkitPro pacman
apt-get update
apt-get install devkitpro-pacman

# installer comme ça:

# /opt/devkitpro/pacman/bin/pacman -S 3dstools devkitARM devkitARM-gdb 3ds-dev devkit-env


#(il y a un fichier devkitpro.pub.gpg dans /etc/apt/keyrings dont je ne sais pas dou il sort)
#sudo cp /usr/local/share/keyring/devkitpro.pub.gpg /etc/apt/keyrings/temp
#(into /etc/apt/keyring )sudo mv devkitpro.gpg devkitpro.gpg.bak
#sudo mv temp devkitpro.gpg
#
