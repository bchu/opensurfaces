#!/usr/bin/env bash

# Postgres apt-repo for Ubuntu versions later than 12.04
# sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
# wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
#   sudo apt-key add -

sudo apt-get update
sudo apt-get install tmux bc

# Required for CGAL and triangulate
cd /home/vagrant/
git clone https://github.com/CGAL/cgal.git
cd cgal
git checkout 8a0731835eab10a7b717fa8714d462bc2e7558e8 # version 4.6.3
cmake .
make
sudo make install
cd /vagrant/triangulate; ./build.sh

echo -e 'cd /vagrant\n' > /home/vagrant/.bash_profile

# http://crohr.me/journal/2014/postgres-rails-the-chosen-lc-ctype-setting-requires-encoding-latin1.html
sudo locale-gen en_US.UTF-8
echo -e "LC_ALL=en_US.UTF-8\nLC_CTYPE=en_US.UTF-8\nLANG=en_US.UTF-8\n" | sudo tee /etc/default/locale > /dev/null
