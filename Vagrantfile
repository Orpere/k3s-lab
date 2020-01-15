# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX = "generic/ubuntu1804"
MASTER = 1
WORKER = 3


Vagrant.configure("2") do |config|
  config.vm.box = BOX

  (1..MASTER).each do |i|
    config.vm.define "MASTER-#{i}" do |master|
      master.vm.provision "shell", inline: 'curl -sfL https://get.k3s.io | sh -', privileged: true
      master.vm.hostname = "MASTER-#{i}"

    end 
  end
  (1..WORKER).each do |i|
    config.vm.define "WORKER-#{i}" do |worker|
      worker.vm.provision "shell", inline: 'curl -sfL https://get.k3s.io | sh -', privileged: true
      worker.vm.hostname = "WORKER-#{i}"
    end 
  end
end 
