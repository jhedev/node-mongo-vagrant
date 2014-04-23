#!/usr/bin/env bash

sudo su

apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/10gen.list

# Update and begin installing some utility tools
apt-get -y update
apt-get install -y python-software-properties
apt-get install -y vim git curl

# Add nodejs repo
add-apt-repository -y ppa:chris-lea/node.js
apt-get -y update

# Install nodejs
apt-get install -y nodejs
apt-get install -y npm

# Install latest stable version of MongoDB
apt-get install -y mongodb-10gen

npm -g install express-generator
