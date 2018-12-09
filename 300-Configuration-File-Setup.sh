#!/bin/bash

##################################################
########### Configuration Setup Script ###########
##################################################

################################
##### .config file changes #####
################################

# Replace i3 configuration with personal configuration
cp -r ~/GitHub/Manjaro/.config/i3/ ~/.config/

# Replace i3blocks with personal configuration
cp -r ~/GitHub/Manjaro/.config/i3blocks/ ~/.config/

# Copy neomuttrc personal configuration
cp -r ~/GitHub/Manjaro/.config/neomutt/ ~/.config/

# Copy ranger personal configuration
cp -r ~/GitHub/Manjaro/.config/ranger/ ~/.config/

############################
##### etc file changes #####
############################

# Replace tlp with personal configuration (SOUND_POWER_SAVE_ON_BAT=0)
sudo rm /etc/default/tlp
sudo cp ~/GitHub/Manjaro/etc/default/tlp /etc/default/

# Replace xorg.conf.d files
sudo rm -r /etc/X11/xorg.conf.d/
sudo cp -r ~/GitHub/Manjaro/etc/X11/xorg.conf.d/ /etc/X11/

#############################
##### home file changes #####
#############################

# Add .Xmodmap to ~/
cp ~/GitHub/Manjaro/home/.Xmodmap ~/

# Add .Xresources to ~/
cp ~/GitHub/Manjaro/home/.Xresources ~/

# Add .XresourcesHiDPI to ~/
cp ~/GitHub/Manjaro/home/.XresourcesHiDPI ~/

# Add .Xstart.zsh to ~/
# Be sure to add this as a startup application in 
# order to load .Xresources in the Cinnamon Desktop.
cp ~/GitHub/Manjaro/home/.Xstart.zsh ~/

#####################
##### zsh setup #####
#####################

# Install zsh-autosuggestions
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install zsh-vim-mode
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/softmoth/zsh-vim-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vim-mode

# Copy custom .zshrc
rm ~/.zshrc
cp ~/GitHub/Manjaro/home/.zshrc ~/.zshrc

###################################
##### Various System Settings #####
###################################

# Run to use the locate command
sudo ionice -c3 updatedb

# Set syncthing to run on startup
sudo systemctl enable syncthing@matt.service

# Set time to local-time (Dual Boot with Windows)
sudo timedatectl set-local-rtc 1 --adjust-system-clock
