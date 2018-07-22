#!/bin/bash

# installation ofr tmux
sudo apt-get install -y automake build-essential libevent-dev libncurses5-dev pkg-config
sudo git clone https://github.com/tmux/tmux.git /usr/local/src/tmux
cd /usr/local/src/tmux
# tmux --versionで"master"と表示させず、version No.で表示させるため。
git checkout $(git tag | sort -V | tail -n 1)
sudo sh autogen.sh
sudo ./configure
sudo make
sudo make install
gem install tmuxinator

echo 'alias mux="tmuxinator"' >> ~/.bash_aliases