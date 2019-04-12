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

# finish
echo ######
echo installing dotfiles are finished.
