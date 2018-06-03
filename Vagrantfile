# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "lunarxubuntu"

  # config.vm.box_check_update = false

  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # config.vm.network "private_network", ip: "192.168.33.10"

  # config.vm.network "public_network"

  config.vm.synced_folder "../../../Documents", "/home/vagrant/Documents"

  config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
    vb.name = "lunarxubuntu"
  end

  config.vm.provision "shell", inline: <<-SHELL
    # init
    apt-get update
    timedatectl set-timezone Asia/Tokyo
  SHELL
  #config.vm.provision "shell", path: "provision/vim.sh", privileged: false
  config.vm.provision "shell", path: "provision/python3.sh", privileged: false
  config.vm.provision "shell", path: "provision/ruby.sh", privileged: false
  config.vm.provision "shell", path: "provision/neovim.sh", privileged: false
  config.vm.provision "shell", path: "provision/tmux.sh", privileged: false
  config.vm.provision "shell", path: "provision/docker.sh", privileged: true
  config.vm.provision "shell", path: "provision/nodejs.sh", privileged: false
  config.vm.provision "shell", path: "provision/aws.sh", privileged: false
  config.vm.provision "shell", path: "provision/terraform.sh", privileged: false
end
