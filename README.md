# dotfiles 

My collection of configs for:
vim
bash

# Installation
## vim
    sudo apt-get install exuberant-ctags # needed for tagbar
    git clone git@github.com:antigoliath/.dotfiles.git ~/.dotfiles
    ln -s ~/.dotfiles/.vimrc ~/.vimrc
    ln -s ~/.dotfiles/.bashrc ~/.bashrc
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qall

=======
Dotfiles
========
