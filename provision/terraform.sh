#!/bin/bash

# installation of terraform
sudo apt install -y unzip
wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip
unzip terraform_0.11.7_linux_amd64.zip -d ~/.local/bin
rm terraform_*_linux_amd64.zip

# installation of terraform-completion
terraform -install-autocomplete

cat << 'EOF' >> ~/.profile
# terraform aws credential
export TF_VAR_access_key=${AWS_ACCESS_KEY_ID}
export TF_VAR_secret_key=${AWS_SECRET_ACCESS_KEY}
export TF_VAR_region=${AWS_DEFAULT_REGION}
EOF

# installation of terraforming
gem install terraforming

# installation of terraform-docs
wget https://github.com/segmentio/terraform-docs/releases/download/v0.3.0/terraform-docs_linux_amd64
mv terraform-docs_linux_amd64 ~/.local/bin/terraform-docs