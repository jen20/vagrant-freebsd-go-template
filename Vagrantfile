# -*- mode: ruby -*-
# vi: set ft=ruby :

freebsd_box = 'jen20/FreeBSD-12.0-CURRENT-VPC'

Vagrant.configure("2") do |config|
	config.ssh.extra_args = ["-e", "%"]
	
	config.vm.define "compile", autostart: true, primary: true do |vmCfg|
		vmCfg.vm.box = freebsd_box
		vmCfg.vm.hostname = "freebsd-compile"

		vmCfg.vm.provision "shell",
			path: './vagrant/scripts/vagrant-freebsd-priv-dev-packages.sh',
			privileged: true

		vmCfg.vm.provider "vmware_fusion" do |v|
			v.vmx["memsize"] = "4096"
			v.vmx["numvcpus"] = "2"
		end
	end
end
