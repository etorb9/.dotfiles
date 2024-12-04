#!/bin/bash

#Appends output from echo statements to file 'linuxsetup.log'
exec >> linuxsetup.log 2>&1

#Checks if the operating system is Linux
if [[ $(uname) != "Linux" ]]; then
	echo "Error: This script only works on Linux systems"
	exit 1
fi

#Creates the ".TRASH" directory in the home directory is it doesn't already exsist
mkdir -p ~/".TRASH"

#If the '.vimrc' file exists in the home directory, it's name gets changed to '.bup_vimrc'
if [[ -f ~/.nanorc ]]; then
	mv ~/.nanorc  ~/.bup_nanorc
	echo "The current .nanorc file was changed to '.bup_nanorc'."
fi

#Redirects the contents of the etc/vimrc file to '.vimrc' file in the home directory
cp /etc/nanorc ~/.nanorc

#Add statement 'source/dotfiles/etc/bashrc.custom' to the end of the .bashrc file in the home directory
echo "source ~/. dotfiles/etc/bashrc_custom" >> ~/.bashrc

