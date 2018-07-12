#!/bin/bash

########################################################
########### Installation of Manjaro Packages ###########
########################################################

# It is important to run sudo pacman -Syu and 
# reboot after a fresh installation. This script 
# is intended to be run directly after a fresh 
# installation and reboot.

#########################################
##### Loading Mirrors and Updating  #####
#########################################

# Replace pacman.conf with personal configuration
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

# Install cmake
sudo pacman -S cmake

# Install compton
sudo pacman -S compton

# Install dmenu
sudo pacman -S dmenu

# Install feh
sudo pacman -S feh

# Install flash
sudo pacman -S flashplugin

# Install fortune
sudo pacman -S fortune-mod

# Install ttf-font-awesome
sudo pacman -S ttf-font-awesome

# Install gnome-terminal-fedora (for transparency)
sudo pacman -S gnome-terminal-fedora

# Install gvim
sudo pacman -S gvim

# Install heroku toolbelt
curl https://cli-assets.heroku.com/install-standalone.sh | sh

# Install i3-gaps, i3status, i3blocks, i3lock
sudo pacman -S i3-gaps i3blocks i3lock i3status

# Install jhead
sudo pacman -S jhead

# Install mlocate
sudo pacman -S mlocate

# Install neofetch
sudo pacman -S neofetch

# Install neomutt
sudo pacman -S neomutt

# Install pepper-flash for chrome
# Be sure to go to the chrome settings
# to allow flash for specific websites.
sudo pacman -S pepper-flash

# Install php
sudo pacman -S php

# Install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py
sudo rm ~/GitHub/Manjaro-Linux-Cinnamon/get-pip.py

# Install powerline
sudo pacman -S powerline powerline-vim

# Install pybeautifier
sudo pip install pybeautifier

# Install pywal
sudo pacman -S python-pywal

# Install qutebrowser
sudo pacman -S qutebrowser

# Install ranger
sudo pacman -S ranger

# Install ruby
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
# The following line may have to be run again in zsh in 
# order to use ruby inside the zsh shell.
source ~/.rvm/scripts/rvm
rvm install 2.4
rvm use 2.4
rvm --default use 2.4
gem install htmlbeautifier
gem install rails
gem install rubocop
gem install ruby-beautify

# Install syncthing
sudo pacman -S syncthing

# Install sysstat
sudo pacman -S sysstat

# Install texlive
sudo pacman -S texlive-most

# Install tmux
sudo pacman -S tmux

# Install vlc
sudo pacman -S vlc

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install w3m
sudo pacman -S w3m

# Install xf86-input-synaptics
sudo pacman -S xf86-input-synaptics

# Install xorg-xbacklight
sudo pacman -S xorg-xbacklight

# Install xorg-xrandr
sudo pacman -S xorg-xrandr

# Install zathura
sudo pacman -S zathura
sudo pacman -S zathura-pdf-mupdf

# Install zsh and zsh-completions
sudo pacman -S zsh zsh-completions
