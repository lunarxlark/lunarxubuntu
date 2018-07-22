# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "xenial64"

  # config.vm.box_check_update = false
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 443, host: 443
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"
  config.vm.synced_folder "../../../Github", "/home/vagrant/Github"

  config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
    vb.memory = "4096"
    vb.name = "xenial64"
  end

  config.vm.provision "shell", inline: <<-SHELL
    # init
    apt-get update
    apt remove -y nano
    timedatectl set-timezone Asia/Tokyo
    apt-get install -y jq unzip
    apt install -y colordiff
  SHELL
  
  config.vm.provision "file", source: "./config/bash_aliases", destination: "~/.bash_aliases"

  config.vm.provision "shell", path: "provision/python3.sh",   privileged: false
  config.vm.provision "shell", path: "provision/ruby.sh",      privileged: false
  config.vm.provision "shell", path: "provision/docker.sh",    privileged: true
  config.vm.provision "shell", path: "provision/nodejs.sh",    privileged: false
  config.vm.provision "shell", path: "provision/packer.sh",    privileged: false
  #(required) rubygems
  config.vm.provision "shell", path: "provision/tmux.sh",      privileged: false
  #(required) rugygems, python2,3, node.js
  config.vm.provision "shell", path: "provision/neovim.sh",    privileged: false
  #(required) python3
  config.vm.provision "shell", path: "provision/aws.sh",       privileged: false
  #(required) rubygems
  config.vm.provision "shell", path: "provision/terraform.sh", privileged: false
  #(required) python3
  config.vm.provision "shell", path: "provision/ansible.sh",   privileged: false
end