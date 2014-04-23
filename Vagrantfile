# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.network :forwarded_port, guest: 8080, host: 8080
  config.vm.network :forwarded_port, guest: 27017, host: 27017 # MongoDB port

  config.vm.network :public_network

  # Uncomment and edit this line to add a synced folder
  # config.vm.synced_folder "../data", "/vagrant_data"
 
  config.vm.provision :shell, :path => "bootstrap.sh"

end
