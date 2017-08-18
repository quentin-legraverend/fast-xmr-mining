#!/bin/bash
sudo apt-get --assume-yes update
sudo apt-get --assume-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev
git clone https://github.com/fireice-uk/xmr-stak-cpu.git
cd xmr-stak-cpu
sed -i 's/2.0/0/' donate-level.h
cmake .
make install
cd bin/
rm -f config.txt
wget https://raw.githubusercontent.com/Kuaaaly/xmr-mining/master/config.txt
sudo sysctl -w vm.nr_hugepages=128
#echo '* soft memlock 262144' | sudo tee --append /etc/security/limits.conf
#echo '* hard memlock 262144' | sudo tee --append /etc/security/limits.conf
sudo ./xmr-stak-cpu config.txt &