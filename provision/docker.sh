#!/bin/bash

apt-get remove docker docker-engine docker.io
apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
apt-get update
apt-get install -y docker-ce
cat /etc/group | grep docker || groupadd docker
gpasswd -a vagrant docker
systemctl enable docker