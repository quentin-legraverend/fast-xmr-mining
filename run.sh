#!/bin/bash
sudo apt-get --assume-yes update
sudo apt-get --assume-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev
cd fast-xmr-mining
git clone https://github.com/fireice-uk/xmr-stak-cpu.git
cd xmr-stak-cpu
sed -ie "s/2.0/$5/" donate-level.h
cmake .
make install
cd bin/
CPU_CONF="$(./xmr-stak-cpu config.txt |sed -n '/^\"cpu/,/\]/p')"
rm -f config.txt
cp ../../config.txt .
echo "$CPU_CONF" >> config.txt
sed -ie "s/POOL_ADDRESS/$1/" config.txt
sed -ie "s/POOL_PORT/$2/" config.txt
sed -ie "s/WALLET_ADDRESS/$3/" config.txt
sed -ie "s/POOL_PASSWORD/$4/" config.txt
sed -ie "s/\"use_tls\" : true/\"use_tls\" : $6/" config.txt
sudo sysctl -w vm.nr_hugepages=128
#echo '* soft memlock 262144' | sudo tee --append /etc/security/limits.conf
#echo '* hard memlock 262144' | sudo tee --append /etc/security/limits.conf
sudo ./xmr-stak-cpu config.txt &