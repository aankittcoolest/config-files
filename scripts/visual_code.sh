wget https://go.microsoft.com/fwlink/?LinkID=760867

#Installing the software
cd /tmp/
tar -xzf v1.9.tar.gz
cd vs*
./configure
make
sudo make install
