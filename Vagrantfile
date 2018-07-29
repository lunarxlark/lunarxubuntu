# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "xenial64"

  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 443, host: 443
  config.vm.network "private_network", ip: "192.168.33.10"
  config.ssh.forward_x11 = true

  config.vm.synced_folder "../../../Github", "/home/vagrant/Github"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.name = "xenial64"
    vb.customize [
      "modifyvm", :id,
      "--vram", "256",
      "--cpus", "2"
    ]
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

  # Host-machine setting
  #   - X server(VcXsrv) install
  #   - export DISPLAY=localhost:0.0
  # Remote-machine setting
  #  - export DISPLAY=localhost:10.0
  config.vm.provision "shell", path: "provision/vscode.sh",    privileged: false
  config.vm.provision "shell", path: "provision/python3.sh",   privileged: false
  config.vm.provision "shell", path: "provision/ruby.sh",      privileged: false
  config.vm.provision "shell", path: "provision/docker.sh",    privileged: true
  config.vm.provision "shell", path: "provision/nodejs.sh",    privileged: false
  config.vm.provision "shell", path: "provision/packer.sh",    privileged: false

  #(required) rubygems
  config.vm.provision "shell", path: "provision/tmux.sh",      privileged: false
  config.vm.provision "shell", path: "provision/terraform.sh", privileged: false

  #(required) rugygems, python2,3, node.js
  config.vm.provision "shell", path: "provision/neovim.sh",    privileged: false

  #(required) python3
  config.vm.provision "shell", path: "provision/aws.sh",       privileged: false
  config.vm.provision "shell", path: "provision/ansible.sh",   privileged: false
end