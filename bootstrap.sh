#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install tmux
echo -e 'cd /vagrant\n' > /home/vagrant/.bash_profile

# http://crohr.me/journal/2014/postgres-rails-the-chosen-lc-ctype-setting-requires-encoding-latin1.html
sudo locale-gen en_US.UTF-8
echo -e "LC_ALL=en_US.UTF-8\nLC_CTYPE=en_US.UTF-8\nLANG=en_US.UTF-8\n" | sudo tee /etc/default/locale > /dev/null

cd /vagrant/triangulate; ./build.sh
