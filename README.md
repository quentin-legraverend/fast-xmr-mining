# Welcome to fast-xmr-mining

This script was made to compile, install, configure and launch xmr-stak-cpu as fast as possible. **It is not actually fully functionnal** so feel free to fork it and adapt it to your use case. First viable release planned for august 23rd.

Tu run it simply paste :
```
git clone https://github.com/Kuaaaly/fast-xmr-mining.git
./fast-xmr-mining/run.sh POOL_ADDRESS POOL_PORT WALLET_ADDRESS POOL_PASSWORD DONATION_LEVEL TLS (true or false)
```
Exemple :
./fast-xmr-mining/run.sh pool.supportxmr.com 3333 49XUqEGV4jq7Vy4Lujs5kC77S68tMquYH2ZUPLvC4dBQBM4gEzRDqo37DK7dMCjZjTBJUpsAbeqRedsQ9wdhrfJ21Dzf9zG
 PC:kuaaaly@gmail.com 1 false

 Will set the miner to mine on supportXMR, without TLS, and with all the other parameters

Prerequisites :
- Debian based distro
- Sudo access
- 2 cores machine (otherwise, you would have modifications to make to config.txt file)

Next improvements :
- Run xmr-stak-cpu as dedicated user (not root). I don't have actually done it because I were in a hurry tonigh
- Support all hardware / CPU configuration by running xmr-stak-cpu with "cpu_threads_conf": null, first

If you think I deserve it, donations are more than welcome :
49XUqEGV4jq7Vy4Lujs5kC77S68tMquYH2ZUPLvC4dBQBM4gEzRDqo37DK7dMCjZjTBJUpsAbeqRedsQ9wdhrfJ21Dzf9zG
