#!/bin/bash

#Dependencies
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install git
sudo apt-get -y install ruby
sudo apt-get -y install libgmp-dev
sudo apt-get -y install libpq-dev
sudo apt-get -y install g++
sudo apt-get -y install ruby-dev
sudo apt-get -y install libsqlite3-dev
sudo gem install bundler
sudo gem install libv8

#CTF Leaderboard
cd /home/vagrant
git clone https://github.com/tophertimzen/ctf-scoreboard 
cd ctf-scoreboard
bundle install
cp config/secrets.yml.template config/secrets.yml
rake db:setup
crontab -l | { cat; echo "@reboot /home/vagrant/ctf-scoreboard/script/rails s -b 0.0.0.0 -d"; } | crontab - 
/home/vagrant/ctf-scoreboard/script/rails s -b 0.0.0.0 -d