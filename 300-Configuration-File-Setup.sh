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

# Copy powerline personal configuration
cp -r ~/GitHub/Manjaro/.config/powerline ~/.config/

# Copy ranger personal configuration
cp -r ~/GitHub/Manjaro/.config/ranger/ ~/.config/

# Replace qutebrowser with personal configuration
sudo cp -r ~/GitHub/Manjaro/.config/qutebrowser ~/.config/


############################
##### etc file changes #####
############################

# Replace tlp with personal configuration (SOUND_POWER_SAVE_ON_BAT=0)
sudo rm /etc/default/tlp
sudo cp ~/GitHub/Manjaro/etc/default/tlp /etc/default/

# Replace xorg.conf.d files
sudo rm -r /etc/X11/xorg.conf.d/
sudo cp -r ~/GitHub/Manjaro/etc/X11/xorg.conf.d/ /etc/X11/

############################
##### usr file changes #####
############################

# A temporary wrapper fix for gvfs-trash to work in atom
sudo cp ~/GitHub/Manjaro/usr/bin/gvfs-trash /usr/bin/

#############################
##### home file changes #####
#############################

# Copy .bashrc personal configuration
sudo rm ~/.bashrc
cp ~/GitHub/Manjaro/home/.bashrc ~/

# Copy .tmux.conf personal configuration
cp ~/GitHub/Manjaro/home/.tmux.conf ~/

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
##### vim setup #####
#####################

# Copy .vimrc personal configuration
cp ~/GitHub/Manjaro/home/.vimrc ~/

# Copy .vim/after/ personal configuration
cp -r ~/GitHub/Manjaro/.vim/after/ ~/.vim/


#####################
##### zsh setup #####
#####################

# Make zsh the default shell
chsh -s /usr/bin/zsh

# Install zsh-autosuggestions
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install zsh-vim-mode
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/softmoth/zsh-vim-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vim-mode

# Replace .zshrc with personal configuration
rm ~/.zshrc
cp ~/GitHub/Manjaro/home/.zshrc ~/

###################################
##### Various System Settings #####
###################################

# Run to use the locate command
sudo ionice -c3 updatedb

# Set syncthing to run on startup
sudo systemctl enable syncthing@matt.service

# Set time to local-time (Dual Boot with Windows)
sudo timedatectl set-local-rtc 1 --adjust-system-clock

#####################
### SSH key setup ###
#####################

ssh-keygen -C mcginnisma90@gmail.com -t rsa

# Be sure to delete the old key on Heroku
heroku keys:add

# Be sure to delete the old linux key and replace it on GitHub
# Run cat ~/.ssh/id_rsa.pub to get key for GitHub

