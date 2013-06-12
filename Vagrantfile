# -*- mode: ruby -*-
# vi: set ft=ruby :

nodes = %w{node0 node1 node2}

Vagrant.configure("2") do |config|
  config.vm.box     = "puppet-precise64"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-1204-x64.box"

  config.vm.provider :virtualbox do |vb|
    modifyvm_args = ['modifyvm', :id]
    # Isolate guests from host networking.
    modifyvm_args << "--natdnsproxy1" << "on"
    modifyvm_args << "--natdnshostresolver1" << "on"
    vb.customize(modifyvm_args)
  end

  config.vm.provision :puppet,
    :options => ["--debug", "--verbose", "--summarize", "--reports", "store"] do |puppet|
    puppet.manifest_file  = "site.pp"
    puppet.manifests_path = "manifests"
    puppet.module_path    = [ "modules", "vendor/modules" ]
  end

  nodes.each do |node_name|
    config.vm.define node_name do |node|
      node.vm.hostname = node_name
    end
  end
end
