#! /bin/bash
# Installation script

# Download the plugin manager.
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Copy the configuration.
cp init.vim ~/.config/nvim/init.vim

# Copy the YouCompleteMe configuration files.
cp ycm_extra_conf.py ~/.config/nvim/ycm_extra_conf.py
