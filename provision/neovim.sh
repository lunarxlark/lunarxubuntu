#!/bin/bash

# install vim8
#sudo add-apt-repository ppa:jonathonf/vim
#sudo apt update
#sudo apt install -y vim
#wget https://raw.githubusercontent.com/lunarxlark/dotfiles/master/vimfiles/vimrc ~/.vimrc

# install neovim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
echo 'alias vi="nvim"' >> ~/.bash_alias

pip3 install neovim --no-cache-dir --use
~/.rbenv/shims/gem install neovim
