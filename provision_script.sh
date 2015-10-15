#!/bin/bash
set -e

echo '*********************'
echo '*  UPDATE PACKAGES  *'
echo '*********************'
sudo apt-get update

echo '******************'
echo '*  INSTALL JAVA  *'
echo '******************'
sudo apt-get install -y openjdk-7-jdk
echo "export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64" >> ~/.bashrc
source ~/.bashrc

echo '************************'
echo '*  CONFIGURE INTELLIJ  *'
echo '************************'
wget -O intellij.tar.gz https://download.jetbrains.com/idea/ideaIC-14.1.5.tar.gz
tar xfz intellij.tar.gz
sudo ln -s ~/idea-*/bin/idea.sh /usr/local/bin/idea

echo '****************************'
echo '*  INSTALL GIT AND GRADLE  *'
echo '****************************'
sudo apt-get install -y git gradle

echo '*************************************'
echo '*  SETUP SELENIUM WORKSHOP PROJECT  *'
echo '*************************************'
git clone https://github.com/ThoughtWorksInc/selenium_workshop_skeleton.git
echo "alias selenium='cd ~/selenium_workshop_skeleton'" >> ~/.bashrc
source ~/.bashrc
