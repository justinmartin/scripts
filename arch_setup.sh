#!/bin/bash


#Install Packages
pacman -Syy
pacman -S git openssh fish --noconfirm

systemctl enable sshd
systemctl start sshd

pacman -S base-devel gcc --noconfirm

# Install and Configure sudo
pacmann -S sudo 

echo '%wheel ALL=(ALL:ALL) ALL' | sudo EDITOR='tee -a' visudo

# Install Docker-Compose

pacman -S docker docker-compose --noconfirm
systemctl enable docker
systemctl start docker

pacman -S qemu-guest-agent
systemctl enable qemu-ga
systemctl start qemu-ga


# Create User Account
useradd --create-home --shell /usr/bin/fish --groups docker,wheel justin 
passwd justin

sudo -u justin ./install_yay.sh

