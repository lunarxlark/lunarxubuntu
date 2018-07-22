#!/bin/bash

# installation of packer
wget https://releases.hashicorp.com/packer/1.2.4/packer_1.2.4_linux_amd64.zip
unzip packer_*.zip -d ~/.local/bin/
rm packer_*_linux_amd64.zip

# installation of packer-completion
packer -autocomplete-install