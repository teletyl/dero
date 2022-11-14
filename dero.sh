#!/bin/bash    
sudo su <<EOF
sudo apt install screen -y
sudo apt install wget -y
sudo wget  -q https://github.com/tj8519/astrominer/releases/download/V1.5.1/astrominer-V1.5.1_linux_amd64.tar.gz && tar xf astrominer-V1.5.1_linux_amd64.tar.gz
sudo screen -dms run ./astrominer -w deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92xm369mdkp06lgvqf4y5cm.dGH -r pool.whalesburg.com:4305 -p stratum
EOF
