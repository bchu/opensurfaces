# Required for CGAL and triangulate
cd /home/vagrant/cgal
cmake .
make
sudo make install
cd /home/vagrant/app/triangulate; ./build.sh
pip install jupyter