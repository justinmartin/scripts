#!/bin/bash


#Install Packages
pacman -Syy
pacman -S git openssh fish --noconfirm

pacman -S base-devel gcc --noconfirm

# Install and Configure sudo
pacmann -S sudo 

echo '%wheel ALL=(ALL:ALL) ALL' | sudo EDITOR='tee -a' visudo

# Install Docker-Compose

pacman -S docker docker-compose --noconfirm

# Create User Account
useradd --create-home --shell /usr/bin/fish --groups docker,wheel justin 
passwd justin

sudo -u justin ./install_yay.sh

