# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.synced_folder ".", "/vagrant"

  config.vm.define "ansible" do |machine|
    machine.vm.network "private_network", ip: "192.168.58.121"
    machine.vm.network "private_network", ip: "192.168.59.121", virtualbox__intnet: "intra"
    # machine.vm.network "public_network", bridge: "en0: Ethernet", ip: '192.168.10.34'
    machine.vm.provider "virtualbox" do |vb|
      vb.customize [
          "modifyvm", :id,
          "--memory", 512,
          "--cpus", 2,
          "--ioapic", "on", # ここからさきの設定は、CUIサーバー特化設定
          "--groups", "/machine-ansible",
          "--hwvirtex", "on",
          "--nestedpaging", "on",
          "--largepages", "on",
          "--ioapic", "on",
          "--pae", "on",
          "--paravirtprovider", "kvm",
      ]
    end
    machine.vm.provision "shell", privileged: true, path: "ansible_install.sh"
    machine.vm.box = "centos/7"
  end
end