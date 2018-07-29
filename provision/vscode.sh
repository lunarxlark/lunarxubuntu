#!/bin/bash

# VS Code installation
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update -y
sudo apt-get install -y code

# X11 for vscode
sudo apt-get install -y xauth libgtk2.0-0 libxss1 libasound2

# Japanese setting, font installation
sudo apt-get -y install language-pack-ja-base language-pack-ja
sudo localectl set-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP.UTF-8"
sudo apt install -y fonts-migmix
