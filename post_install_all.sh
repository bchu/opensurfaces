# Required for CGAL and triangulate
cd /home/vagrant/cgal
cmake .
make
sudo make install
cd /home/vagrant/app/triangulate; ./build.sh
pip install --upgrade pip
pip install jupyter

jupyter-notebook --generate-config

# 'sha1:9dca29cc3390:799d0d366a84c22f5a065f49035aa2ba1c3e3851'
echo "See instructions at http://jupyter-notebook.readthedocs.io/en/latest/public_server.html to set up a jupyter server"
cp -f jupyter_notebook_config.py /home/vagrant/.jupyter/jupyter_notebook_config.py
mkdir /home/vagrant/certs
openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout /home/vagrant/certs/mykey.key -out /home/vagrant/certs/mycert.pem
