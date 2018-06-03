#!/bin/bash

pip3 install --user awscli boto3
sudo echo "complete -C $(which aws_completer) aws" | sudo tee -a /etc/bash.bashrc

sudo npm install -g cfn-lint
