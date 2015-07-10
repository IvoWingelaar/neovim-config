#! /bin/bash
# Installation script

mkdir .vim
curl -fLo ./.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -sn "$(readlink -f .nvimrc)" ~/.vimrc
ln -sn "$(readlink -f .vim)" ~/.vim
ln -sn "$(readlink -f .nvimrc)" ~/.nvimrc
ln -sn "$(readlink -f .vim)" ~/.nvim
