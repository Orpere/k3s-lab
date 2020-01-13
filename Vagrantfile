# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX = "ubuntu/bionic64"
VERSION = "20200107.0.0"
MASTER = 1
WORKER = 3


Vagrant.configure("2") do |config|
  config.vm.box = BOX
  config.vm.box_version = VERSION

  (1..MASTER).each do |i|
    config.vm.define "MASTER-#{i}" do |master|
      master.vm.network "private_network", ip: "192.168.50.40"
      master.vm.network "public_network", bridge: "wlp0s20f0u3"
      master.vm.provision "shell", inline: 'curl -sfL https://get.k3s.io | sh -', privileged: true
      master.vm.hostname = "MASTER-#{i}"

    end 
  end
  (1..WORKER).each do |i|
    config.vm.define "WORKER-#{i}" do |worker|
      worker.vm.network "private_network", ip: "192.168.50.4#{i}"
      worker.vm.provision "shell", inline: 'curl -sfL https://get.k3s.io | sh -', privileged: true
      worker.vm.hostname = "WORKER-#{i}"
    end 
  end
end 