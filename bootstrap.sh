#!/usr/bin/env bash

# Postgres apt-repo for Ubuntu versions later than 12.04
# sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
# wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
#   sudo apt-key add -

# http://crohr.me/journal/2014/postgres-rails-the-chosen-lc-ctype-setting-requires-encoding-latin1.html
sudo locale-gen en_US.UTF-8
echo -e "LC_ALL=en_US.UTF-8\nLC_CTYPE=en_US.UTF-8\nLANG=en_US.UTF-8\n" | sudo tee /etc/default/locale > /dev/null

sudo apt-get update
sudo apt-get install -y tmux bc git

git clone https://github.com/bchu/opensurfaces.git app

echo -e 'cd /home/vagrant/app\nexport PATH=/usr/local/bin:$PATH\n' > /home/vagrant/.bash_profile

git clone https://github.com/CGAL/cgal.git
cd cgal
git checkout 8a0731835eab10a7b717fa8714d462bc2e7558e8 # version 4.6.3
