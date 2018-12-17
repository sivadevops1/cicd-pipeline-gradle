#!/bin/bash

#Install Jenkins on the server
#Install wget to fetch teh files from urls
sudo yum -y install wget
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo yum -y install unzip java-1.8.0-openjdk


#Install Jenkins

#Key to be installed first
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum -y install -y jenkins-2.121.1

#Edit the jenkins config file to run it with root admin
sudo vi /etc/sysconfig/jenkins
sudo chown -R root:root /var/lib/jenkins
sudo chown -R root:root /var/cache/jenkins
sudo chown -R root:root /var/log/jenkins
sudo systemctl enable jenkins
sudo systemctl start  jenkins

#Check if Jnekins is running with root/jenkins user id
 ps -ef |grep jenkins


