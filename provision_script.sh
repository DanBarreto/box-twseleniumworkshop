#!/bin/bash
set -e

# 1. Update packages
sudo apt-get update

# 2. Install java
sudo apt-get install -y openjdk-7-jdk
echo 'export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64' >> ~/.bashrc
source ~/.bashrc

# 3. Download IDE
wget -O intellij.tar.gz https://download.jetbrains.com/idea/ideaIC-14.1.5.tar.gz
tar xfz intellij.tar.gz

# 4. Install git and gradle
sudo apt-get install -y git gradle

# 5. Setup workshop project
git clone https://github.com/ThoughtWorksInc/selenium_workshop_skeleton.git
