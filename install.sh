#!/bin/bash
apt update
wget -c https://nodejs.org/dist/v18.16.0/node-v18.16.0-linux-x64.tar.xz
tar xvf node-v18.16.0-linux-x64.tar.xz
mkdir /usr/local/lib/nodejs
cp -Rv node-v18.16.0-linux-x64 /usr/local/lib/nodejs/18.16.0
ln -s /usr/local/lib/nodejs/18.16.0/bin/node /usr/bin/node
ln -s /usr/local/lib/nodejs/18.16.0/bin/npm /usr/bin/npm
ln -s /usr/local/lib/nodejs/18.16.0/bin/npx /usr/bin/npx
node -v
npm install pm2 -g
ln -s /usr/local/lib/nodejs/18.16.0/lib/node_modules/pm2/bin/pm2 /usr/bin/pm2
pm2 -v
pm2 startup systemd
