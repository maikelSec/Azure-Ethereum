#!/bin/bash
# Ethereum miner for Microsoft Azure
# Script by MaikelSEC
echo -e "\e[31;43m***** Installing Drivers and Prerequisites *****\e[0m"
sudo apt-get install software-properties-common gcc make -y
sudo add-apt-repository ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum ethminer geth build-essential -y
sudo echo 'blacklist nouveau' >> /etc/modprobe.d/blacklist.conf
sudo echo 'options nouveau modeset=0' >> /etc/modprobe.d/b
wget http://us.download.nvidia.com/XFree86/Linux-x86_64/384.90/NVIDIA-Linux-x86_64-384.90.run
sudo chmod +x NVIDIA-Linux-x86_64-384.90.run
sudo ./NVIDIA-Linux-x86_64-384.90.run --accept-license --no-questions --no-install-compat32-libs
echo -e "\e[31;43m***** Generating Wallet: *****\e[0m"
geth account new
echo -e "\e[31;43m***** Done! To start mining do: 'ethminer -G -F YOURPOOL --farm-recheck 200' *****\e[0m"
