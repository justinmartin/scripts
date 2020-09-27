#!/bin/bash


# Install Yay
git clone https://aur.archlinux.org/yay.git ~/yay
cd /home/justin/yay
makepkg -si --noconfirm
