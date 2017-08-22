# Welcome to fast-xmr-mining

This script was made to compile, install, configure and launch xmr-stak-cpu as fast as possible. The script if fully functionnal but feel free to fork and improve it or make feature request here !

To run it simply paste (and adapt to your case):
```
git clone https://github.com/Kuaaaly/fast-xmr-mining.git
./fast-xmr-mining/run.sh POOL_ADDRESS POOL_PORT WALLET_ADDRESS POOL_PASSWORD DONATION_LEVEL(to xmr-stak-cpu developers, not me) TLS (true or false)
```
Actually all the options are needed. Given that there is no verifications on arguments, if you forget or misspell one, the script won't work. Setting proper options on the script is on the improvements list. 

Exemple :
```
./fast-xmr-mining/run.sh pool.supportxmr.com 3333 49XUqEGV4jq7Vy4Lujs5kC77S68tMquYH2ZUPLvC4dBQBM4gEzRDqo37DK7dMCjZjTBJUpsAbeqRedsQ9wdhrfJ21Dzf9zG GitHub:kuaaaly@gmail.com 1 false
```

If you failed and want to restart from scratch, just `rm -rf fast-xmr-mining`.

This will set the miner to mine on pool.supportxmr.com, without TLS, and a donation level of 1% to xmr-stak-cpu developers. **Do not forget that pools don't always have the same settings, so please refer to your pool "Getting started" page to set POOL_PORT WALLET_ADDRESS POOL_PASSWORD properly.**

Prerequisites :
- Debian based distro (tested on Ubuntu 16.04 LTS)
- sudo access

Next improvements :
- Run xmr-stak-cpu as dedicated user (not root), **really important** but I didn't have time to do it
- Build options to run the script more properly
- Lots of other ideas I will share later 

If you think I deserve it, donations are more than welcome :
```
49XUqEGV4jq7Vy4Lujs5kC77S68tMquYH2ZUPLvC4dBQBM4gEzRDqo37DK7dMCjZjTBJUpsAbeqRedsQ9wdhrfJ21Dzf9zG
```