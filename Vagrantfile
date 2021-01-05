Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network "public_network"
  config.vm.synced_folder "www/", "/var/www/html", owner: "www-data", group: "www-data", mount_options: ['dmode=777','fmode=666']
  config.vm.synced_folder "~", "/vagrant", owner: "vagrant", group: "vagrant"
  config.vm.provider "virtualbox" do |machine|
    machine.memory = 1024
    machine.name = "ubuntu-php"
  end
  config.vm.provision :shell, path: "setup.sh"
end