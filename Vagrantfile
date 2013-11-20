# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version.
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	box_name="TradeBot-dev"
	config.vm.box = "raring64"
	config.vm.box_url = "http://goo.gl/ceHWg"

	config.vm.provision :puppet do |puppet|
		puppet.manifests_path="manifests"
		puppet.manifest_file="default.pp"
		puppet.module_path="modules"
	end

	config.vm.provider :virtualbox do |v|
		v.gui = true
		v.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
	end
end

