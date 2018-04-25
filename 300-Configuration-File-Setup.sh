#!/bin/bash

##################################################
########### Configuration Setup Script ###########
##################################################

# Set time to local-time (Dual Boot with Windows)
sudo timedatectl set-local-rtc 1 --adjust-system-clock

# Replace tlp with personal configuration (SOUND_POWER_SAVE_ON_BAT=0)
sudo rm /etc/default/tlp
sudo cp ~/GitHub/Manjaro-Linux-Cinnamon/etc/default/tlp /etc/default/

# Replace .Xresources with personal configuration
cp ~/GitHub/Manjaro-Linux-Cinnamon/home/.Xresources ~/
