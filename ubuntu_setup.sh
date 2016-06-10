sudo apt-get install virtualbox=5.0.14-dfsg-0ubuntu1.15.10.1
wget http://download.virtualbox.org/virtualbox/5.0.14/Oracle_VM_VirtualBox_Extension_Pack-5.0.14-105127.vbox-extpack
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.0.14-105127.vbox-extpack

wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb
sudo gdebi vagrant_1.8.1_x86_64.deb
