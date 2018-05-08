#!/bin/bash

##################################################
########### Configuration Setup Script ###########
##################################################

# It is important to run sudo pacman -Syu and 
# reboot after a fresh installation. This script 
# is intended to be run directly after a fresh 
# installation and reboot.

########################################
#### Loading Mirrors and Updating  #####
########################################

# Repalace pacman.conf with personal configuration
sudo rm /etc/pacman.conf
sudo cp ~/GitHub/Manjaro-Linux-Cinnamon/etc/pacman.conf /etc/

# Create mirror list
sudo pacman-mirrors --geoip

# Update repositories and packages
sudo pacman -Syyu

################################
##### Package Installation #####
################################

# Install atom
sudo pacman -S atom
apm install sync-settings

# Install dmenu
sudo pacman -S dmenu

# Install gvim
sudo pacman -S gvim

# Install i3-gaps, i3status, i3blocks, i3lock
sudo pacman -S i3-gaps i3blocks i3lock i3status

# Install lynx
sudo pacman -S lynx

# Install mlocate
sudo pacman -S mlocate

# Install neomutt
sudo pacman -S neomutt

# Install ranger
sudo pacman -S ranger

# Install ruby
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io -o rvm.sh
cat rvm.sh | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.4
rvm use 2.4
rvm --default use 2.4
gem install rails

# Install sysstat
sudo pacman -S sysstat

# Install tmux
sudo pacman -S tmux

# Install vlc
sudo pacman -S vlc

# Install xf86-input-synaptics
sudo pacman -S xf86-input-synaptics
