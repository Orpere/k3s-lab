# -*- mode: ruby -*-
# vi: set ft=ruby :
# mantainer = Orlando Pereira

BOX = "generic/ubuntu1804"
MASTER = 1
WORKER = 3


Vagrant.configure("2") do |config|
  config.vm.box = BOX
  config.vm.provision :shell, path: "k3s.sh"

  (1..MASTER).each do |i|
    config.vm.define "MASTER-#{i}" do |master|
      master.vm.hostname = "MASTER-#{i}"
      master.vm.network :private_network, :ip => "192.168.121.2"
    end
  end 

  (1..WORKER).each do |i|
    config.vm.define "WORKER-#{i}" do |worker|
      worker.vm.hostname = "WORKER-#{i}"
    end 
  end
end
