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

# Install atom with configuration loaded from GitHub
sudo pacman -S atom
apm install sync-settings
GITHUB_TOKEN=d8edfa349b45c027208fb6c7a4100e618362a49c
GIST_ID=9829d276079ff34e73a7c0fadf3c66d7
atom

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

# Install sysstat
sudo pacman -S sysstat

# Install tmux
sudo pacman -S tmux

# Install vlc
sudo pacman -S vlc

# Install xf86-input-synaptics
sudo pacman -S xf86-input-synaptics
