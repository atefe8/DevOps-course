Vagrant.configure("2") do |config|
  config.vm.define "vm1" do |vm1|
    vm1.vm.box ="ubuntu/bionic64"
    vm1.vm.network "private_network", ip:"192.168.56.103"
    vm1.vm.network "forwarded_port", guest:22 ,host:8080
    vm1.vm.provider "virtualbox" do |vb|
      vb.memory="1024"
      vb.cpus=2
    end  
    vm1.vm.provision "shell", path: "E:/virtual/provisioner/vm-setup.sh"
  end  

  config.vm.define "vm2" do |vm2|
    vm2.vm.box="ubuntu/bionic64"
    vm2.vm.network "private_network", ip:"192.168.56.104"
    vm2.vm.network "forwarded_port", guest:20, host:8081
    vm2.vm.provider "virtualbox" do |vb|
      vb.memory="1024"
      vb.cpus=2
    end  
  end  

end  