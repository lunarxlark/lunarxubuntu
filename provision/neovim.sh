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
sudo apt-get install -y neovim

pip3 install neovim --no-cache-dir --use
gem install neovim
gem update neovim
sudo npm install -g neovim