#!/bin/bash

DOT_FILES=(.vimrc )

for file in ${DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/$file $HOME/$file
done

# install fzf
git clone https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install
source ~/.bashrc

# customize .bashrc
echo "alias dc=docker" >> ~/.bashrc
echo "alias aws='docker run --rm -it amazon/aws-cli'" >> ~/.bashrc
#wget https://github.com/abertsch/Menlo-for-Powerline/blob/master/Menlo%20for%20Powerline.ttf ~
#echo -e "\nexport PS1='\[\e[30;47m\] \t \[\e[37;46m\]\[\e[30m\] \W \[\e[36;49m\]\[\e[0m\] '" >> ~/.bashrc
#echo you need to install font to iterm2 default font to "Menlo for Powerline"
#echo [NOTICE] if you don\'t need custmized bash, type "PS1='\h:\W \u\$ '"

# finishing
sudo rm -rf dotfiles
echo "####################################"
echo installing dotfiles are finished.
echo please restart your ssh connection.
