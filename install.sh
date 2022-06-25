#!/bin/sh

set -eu

link_to_dotfiles() {
    for file in .bash_profile .bashrc .tmux.conf .vim .vimrc .zprofile .zshrc
    do
        #[ ! -e $file ] && ln -s dotfiles/$file .
        [ ! -e $HOME/$file ] && ln -s $HOME/dotfiles/$file $HOME/$file
    done
}

link_to_dotfiles
