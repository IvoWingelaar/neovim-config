#! /bin/bash
# Installation script

mkdir .nvim
curl -fLo ./.nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -sn "$(realpath .nvimrc)" ~/.nvimrc
ln -sn "$(realpath .nvim)" ~/.nvim

