#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
sudo npm install -g pm2
pm2 stop devops-app
cd devops-node-app/
npm i
pm2 start ./bin/www --name example_app --env production