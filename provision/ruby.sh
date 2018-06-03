#!/bin/bash

# rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv

echo 'eval $(rbenv init -) >> ~/.bashrc'
source ~/.bashrc

# ruby-build
[ ! -e ~/.rbenv/plugins ] &&  mkdir -p ~/.rbenv/plugins
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
sudo apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline-dev zlib1g-dev libncurses-dev libffi-dev libgdbm-dev

# ruby
~/.rbenv/bin/rbenv install 2.5.1
~/.rbenv/bin/rbenv global 2.5.1

 ~/.rbenv/shims/gem update --system
