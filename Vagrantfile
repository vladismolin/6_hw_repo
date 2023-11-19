Vagrant.configure("2") do |config|
  # Конфігурація першої віртуальної машини
  config.vm.define "VirtualMachine1" do |vm1|
    vm1.vm.box = "ubuntu/jammy64"
	vm1.vm.network "forwarded_port", guest: 80, host: 80
	vm1.vm.network "public_network", ip: "192.168.0.150"
	vm1.vm.disk :disk, size: "10GB", primary: true
	vm1.vm.provider "virtualbox" do |vb|
		vb.memory = 1024
		vb.cpus = 2
	vm1.vm.provision "shell", path: "vm1-setup.sh"  # Виконання скрипту shell
	end
  end

  # Конфігурація другої віртуальної машини
  config.vm.define "VirtualMachine2" do |vm2|
    vm2.vm.box = "ubuntu/jammy64"  
	#vm2.vm.network "forwarded_port", guest: 80, host: 80
    vm2.vm.network "public_network", ip: "192.168.0.151"  # Налаштування мережі
    vm2.vm.disk :disk, size: "10GB", primary: true
	vm2.vm.provider "virtualbox" do |vb|
		vb.memory = 1024
		vb.cpus = 2
	vm2.vm.provision "shell", path: "vm2-setup.sh"  # Виконання іншого скрипту shell
		end
	end
end
