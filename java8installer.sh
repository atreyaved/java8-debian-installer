#!/bin/bash
echo This script will guide you through the process of install java 8 on a debian-based system. The script will just run the commands for you
sudo apt update
sudo apt install apt-transport-https ca-certificates wget dirmngr gnupg software-properties-common
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
sudo add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
sudo apt update
sudo apt install adoptopenjdk-8-hotspot

java -version 
echo now choose the java verision you want to set as default
sleep 3s
sudo update-alternatives --config java
echo now lets set java_home
sudo update-alternatives --config java
echo This will tell you the installed versions
sudo echo 'JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"' >> /etc/environment
sudo source /etc/environment

