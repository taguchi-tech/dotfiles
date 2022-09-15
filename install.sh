#!/bin/sh

set -eu

backup() {
  target=$1
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      mv "$target" "$target.orig"
      echo "-----> Moved your old $target config file to $target.orig"
    fi
  fi
}

symlink() {
  file=$1
  link=$2
  if [ ! -e "$link" ]; then
    echo "-----> Symlinking your new $link"
    ln -s $file $link
  fi
}

cd $HOME

for file in .bash_profile .bashrc .hgrc .tmux.conf .vim .vimrc .zprofile .zshrc; do
    target="${HOME}/${file}"
    if [ ! -d "$target" ]; then
        backup $target
        symlink ${HOME}/dotfiles/${file} $target
    fi
done

