#!/bin/bash
sudo apt-get install -y nodejs npm
sudo npm install -g n
sudo n stable
sudo ln -s /usr/local/bin/node /usr/bin/node
sudo apt-get purge -y nodejs npm
