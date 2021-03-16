#!/usr/bin/env bash


echo "nameserver 8.8.8.8" > /etc/resolv.conf
# Installa i node_modules
yarn install

# start cron for time pdf and start sever
#(cron -f &) &&  nodejs index.js
yarn start
