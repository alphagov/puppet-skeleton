# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box     = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.provision :puppet do |puppet|
    puppet.manifest_file  = "site.pp"
    puppet.manifests_path = "manifests"
    puppet.module_path    = [ "modules", "vendor/modules" ]
  end
end
