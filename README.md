Linux Setup-This repository has the scripts and configuration files for setting up a Linux enviorment. It contains the files:
bin/linux.sh: This is a shell script that sets up congigurations for the Linux enviorment.
bin/cleanup.sh: This is a shell script that reverses the changes made by the linux.sh script.
Makefile: This is a Makefile that has two targets: linux and clean. These are for running the setup and cleanup scripts.
.vimrc: This is a configuration file for the VIM text editor. 
.bashrc.custom: This is a custom configuration file for the Bash shell.

bin/linux.sh
This script: 
Checks that the operating system is Linux
Creates a .TRASH directory in the home directory if it does not already exist
Backs up existing .vimrc file to .bup_vimrc and replaces it with a new .vimrc file from the etc/vimrc in the repository
Appends the statement source ~/.dotfiles/etc/bashrc.custom to the end of the user's .bashrc file
Logs the output to the file linuxsetup.log in the user's home directory 

bin/cleanup.sh
This script:
Removes the .vimrc file and restores any backed up version
Removes the source ~/.dotfiles/etc/bashrc.custom statement from the .bashrc file 
Removes the .TRASH direcotry 
Logs the output to a file linuxcleanup.log in the user's home directory 

Makefile
Provides two targets for running the linux.sh and cleanup.sh scripts.
The linux target runs if the linux.sh script has a dependency on the clean target, which runs the cleanup.sh script
In order to run the setup script, the following command must be executed in the root directory:
make linux 
In order to run the cleanup script, the following command must be executed in the root directory:
make clean

.vimrc and .bashrc.custom
The .vimrc file has configurations for the VIM text editor like setting a default tab width and syntax highlighting
The .bashrc.custom file has configurations for the Bash shell like setting the prompt and aliases for common commands 
Both files are copied to the user's home directory in the setup process
