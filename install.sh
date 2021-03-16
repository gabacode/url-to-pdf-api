#!/usr/bin/env bash
cp .env.sample .env

if [ ! -f ./.env ];then
        cp .env.sample .env
else
        echo "*** ATTENZIONE: File .env trovato. Skpping"
fi

mkdir -p node_modules
sudo chmod -R 777 node_modules

if [ ! -f ./.docker-compose.override.yml ];then
        cp docker-compose.override.example.yml docker-compose.override.yml
else
        echo "*** ATTENZIONE: File .env trovato. Skpping"
fi

docker-compose up -d
