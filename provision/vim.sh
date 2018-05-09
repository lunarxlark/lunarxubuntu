#!/bin/bash

echo 'alias vi="vim"' >> ~/.bash_alias
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install -y vim
wget https://raw.githubusercontent.com/lunarxlark/dotfiles/master/vimfiles/vimrc ~/.vimrc
