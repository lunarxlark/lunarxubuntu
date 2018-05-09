#!/bin/bash

sudo apt-get install -y automake build-essential libevent-dev libncurses5-dev pkg-config
sudo git clone https://github.com/tmux/tmux.git /usr/local/src/tmux
cd /usr/local/src/tmux
git checkout $(git tag | sort -V | tail -n 1)
sudo sh autogen.sh
sudo ./configure
sudo make
sudo make install

