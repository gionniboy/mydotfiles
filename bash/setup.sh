#!/bin/bash

# Gionni Firegarden firegarden@autistici.org
# 10/2014
# Post-installation script to personalize quickly personal bash files
# and something else ...

# some var to personalize during the execution
echo "To personalize the configuration we need some information."
echo -n "Enter your git username: "
read GITUSER

echo -n "Enter your git email: "
read GITMAIL

echo -e "Configuring git variables... \n"
git config --global color.ui auto
git config --global user.name $GITUSER
git config --global user.email $GITMAIL
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=7200'
sleep .5s

echo -e "Creating ~/bin folder, if not already there... \n"
if [ ! -d "~/bin" ]; then
    mkdir "~/bin"
fi
sleep .5

echo -e "making the .ssh dir, if not already there... \n"
if [ ! -d "~/.ssh" ]; then
    mkdir "~/.ssh"
fi
sleep .5

echo -e "Adding bash rule options alias and functions, 2 dircolor profile, git prompt, vimrc and something else ;) \n Check it out... \n"
cp config/.profile ~/
cp config/.bashrc ~/
cp config/.bash_aliases ~/
cp config/.bash_options ~/
cp config/.bash_functions ~/
cp config/.bash_logout ~/
cp config/.dircolors1 ~/
cp config/.dircolors2 ~/
cp config/.git-prompt ~/
cp config/.gitignore ~/
cp config/.vimrc ~/
cp config/.tmux-conf ~/

sleep .5

echo -e "sourcing bash profile to reload settings... \n"
source ~/.bashrc
sleep .5

echo -e "Don't forget ssh keys [config,keys,pub blabla]... \n"

echo -e "Done!"

exit 0
