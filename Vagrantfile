# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version.
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	box_name      = "TradeBot-dev"
	config.vm.box = "raring64-2"

	#Ubuntu Raring 64 (13.04) Vanilla
	#config.vm.box_url = "http://goo.gl/ceHWg"

	#Ubuntu Server 13.04 x64 Raring Ringtail (VirtualBox Guest Additions 4.2.12, Chef 11.4.4, Puppet 2.7.18)
	config.vm.box_url = "http://goo.gl/Y4aRr"

	config.vm.provision "puppet" do |puppet|
	    puppet.options        = "--verbose --debug"
		puppet.manifests_path = "manifests"
		puppet.manifest_file  = "default.pp"
		puppet.module_path    = "modules"
	end

	config.vm.provider :virtualbox do |v|
		v.gui = true
		v.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
	end
end

