# CTF Leaderboard Vagrant Box

This Vagrant box contains a CTF Leaderboard forked from [MITRE](https://github.com/mitre-cyber-academy/ctf-scoreboard). I have modified it slightly to suit my purposes in my [fork](https://github.com/tophertimzen/ctf-scoreboard).  

## Install VirtualBox
Check [Virtualbox](https://www.virtualbox.org/wiki/Downloads) for information on installing Virtualbox on your respective operating system.

## Install Vagrant
Check [VagrantUp](http://www.vagrantup.com/downloads) for information on installing vagrant.

## Fire up the VM
```
git clone https://github.com/tophertimzen/labCTF
cd labCTF
vagrant up
vagrant ssh
```

## Check correct installation

Navigate to http://localhost:8080 on your host machine. 

To login to the admin dashboard use admin:acklerackler.