# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"
  config.vm.define "kind"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "kind"
  end

  config.vm.provision "shell", path: "provision.sh"
  config.vm.provision "docker",
    images: ["alpine"]

end
