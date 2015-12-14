Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 3000, host: 8080
  config.ssh.username = 'vagrant'
  config.vm.provision :shell, :path => "setup.sh"
  
  config.vm.provider "virtualbox" do |vb|
    vb.name = "labCTF"
  end
  
end
