# -*- mode: ruby -*-
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "angular" do |angular|
    angular.vm.box = "ubuntu/trusty64"
    angular.vm.synced_folder "srv/", "/srv/"
    angular.vm.host_name = "angular"
    angular.vm.provision :salt do |salt|
      salt.minion_config = "srv/minion"
      salt.run_highstate = true 
    end    
    angular.vm.provision "shell",
      inline: "ln -s /usr/bin/nodejs /usr/bin/node"
  end

end

Vagrant::Config.run do |angular|
  angular.vm.forward_port 3200, 3200
  angular.vm.forward_port 8000, 8000
end
