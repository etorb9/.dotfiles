#!/bin/bash

#Remove the nanorc file in the home directory
rm -f ~/.nanorc

#Remove 'source /.dotfiles/bashrc_custom' in the bashrc file in home directory
sed -i '/source \/\.dotfiles\/bashrc_custom/d' ~/.bashrc

#Remove the .TRASH directory in home directory
rm -rf ~/".TRASH"

