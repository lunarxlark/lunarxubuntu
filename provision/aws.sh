#!/bin/bash

sudo apt install -y python3-pip
sudo pip3 install awscli boto3
sudo pip3 install --upgrade pip
sudo echo "complete -C $(which aws_completer) aws" | sudo tee -a /etc/bash.bashrc

sudo npm install -g cfn-lint
