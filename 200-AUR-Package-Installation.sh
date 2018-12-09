#!/bin/bash

##############################################
########## AUR Package Installation ##########
##############################################

# Install google chrome
yaourt -S google-chrome

# Install i3exit
yaourt -S i3exit

# Install j4-dmenu-desktop-git
yaourt -S j4-dmenu-desktop-git

# Install rxvt-unicode-pixbuf
yaourt -S rxvt-unicode-pixbuf

# Install spotify
yaourt -S spotify

# Install urxvt-resize-font-git
yaourt -S urxvt-resize-font-git

#################################################
########## GitHub Package Installation ##########
#################################################

# Install patched powerline fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

############################################
########## oh-my-zsh Installation ##########
############################################

# Install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

