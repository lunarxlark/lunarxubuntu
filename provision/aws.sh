#!/bin/bash

# installation of aws-cli
pip3 install --user awscli boto3
# aws-cli completion
sudo echo "complete -C $(which aws_completer) aws" | sudo tee -a /etc/bash.bashrc

cat << EOF >> ~/.profile
# aws credentian
export AWS_ACCESS_KEY_ID=XXXXXXXXXXX
export AWS_SECRET_ACCESS_KEY=XXXXXXXXXXX
export AWS_DEFAULT_REGION=ap-northeast-1
export AWS_DEFAULT_OUTPUT=json
EOF

sudo npm install -g cfn-lint