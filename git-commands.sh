#!/bin/bash
#Install Git
sudo yum -y install git
ssh-keygen -t rsa -b 4096
#For changing the PS1
#export PS1="[\u@\h \W SYS2] \$""

git --version
git config --global user.name Siva.Sunku
git config --global user.email siva.sunku.public@gmail.com
git clone git@github.com:sivadevops1/cicd-pipeline-gradle.git

#To check the status
git status

# Add the files
git add .

# Commit
git commit -m "first change on 17th Dec"

#Differences between origin and master branch
git diff origin master

#Push changes directly to master
git push origin master

