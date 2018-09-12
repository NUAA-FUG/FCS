#!/bin/sh

cd ~/Download

# Download JDK Binary
wget -q --show-progress --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/10.0.1+10/fb4372174a714e6b8c52526dc134031e/jdk-10.0.1_linux-x64_bin.rpm

# Download JRE Binary
wget -q --show-progress --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/10.0.1+10/fb4372174a714e6b8c52526dc134031e/jre-10.0.1_linux-x64_bin.rpm

# Install JDk and JRE
sudo dnf install jdk-10.0.1_linux-x64_bin.rpm -y
sudo dnf install jre-10.0.1_linux-x64_bin.rpm -y

# Setup Java Environment Variables
## Set JAVA_HOME and Path Variable JDK
export JAVA_HOME=/usr/java/jdk-10.0.1
export PATH=$PATH:/usr/java/jdk-10.0.1/bin

## Set JAVA_HOME and Path Variable JRE
export JAVA_HOME=/usr/java/jre-10.0.1
export PATH=$PATH:/usr/java/jre-10.0.1/bin

# Check Java JDk and JRE version
java --version