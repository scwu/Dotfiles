# dotfiles 

My collection of configs for:
vim
bash

# Installation
## vim
    git clone git@github.com:antigoliath/.dotfiles.git
    ln -s .dotfiles/.vimrc .vimrc
    ln -s .dotfiles/.bashrc .bashrc
    ln -s .dotfiles/.vim .vim
    git clone https://github.com/gmarik/vundle.git ~/.dotfiles/.vim/bundle/vundle
    vim +BundleInstall +qall

