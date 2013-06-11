# -*- mode: ruby -*-
# vi: set ft=ruby :

nodes = %w{node0 node1 node2}

Vagrant.configure("2") do |config|
  config.vm.box     = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.provision :puppet do |puppet|
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
