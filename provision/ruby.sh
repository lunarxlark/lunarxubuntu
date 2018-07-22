#!/bin/bash

# installation of rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo "" >> ~/.profile
echo "# ruby" >> ~/.profile
echo 'export PATH=$HOME/.rbenv/bin:$PATH' >> ~/.profile
echo 'eval "$(rbenv init -)"' >> ~/.profile
source ~/.profile

# installation of ruby-build
[ ! -e ~/.rbenv/plugins ] &&  mkdir -p ~/.rbenv/plugins
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
sudo apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline-dev zlib1g-dev libncurses-dev libffi-dev libgdbm-dev

# installation of ruby
rbenv install 2.5.1
rbenv global 2.5.1
gem update --system