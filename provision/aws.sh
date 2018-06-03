#!/bin/bash

pip3 install --user awscli boto3
sudo echo "complete -C $(which aws_completer) aws" | sudo tee -a /etc/bash.bashrc

sudo npm install -g cfn-lint

cat << EOF >> ~/.bashrc
# aws credentian
export AWS_ACCESS_KEY_ID=XXXXXXXXXXX
echo "export AWS_SECRET_ACCESS_KEY=XXXXXXXXXXX
echo "export AWS_DEFAULT_REGION=ap-northeast-1
echo "export AWS_DEFAULT_OUTPUT=json
EOF
