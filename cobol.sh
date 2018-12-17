#!/bin/bash

#Commands to install open cobol on centOs

#Install all dependencies
sudo yum -y install libgmp3-dev libtool libdb-dev ncurses-dev libncurses-dev
sudo yum -y install gmp gmp-devel libtool ncurses ncurses-devel ncurses-libs make
sudo yum -y install libdbi libdbi-devel libtool-ltdl libtool-ltdl-devel db4 db4-devel


#Get the cobol packages
sudo wget http://sourceforge.net/projects/open-cobol/files/gnu-cobol/3.0/gnucobol-3.0-rc1.tar.gz
sudo tar xvf gnucobol-3.0-rc1.tar.gz
cd gnucobol-3.0-rc1
sudo ./configure --without-db
sudo make
sudo make check
sudo make install
sudo ldconfig

cobc -V

#Compile a sample cobol program
cobc -x -std=ibm SAMPLE.CBL

#Some times the ldddependencies will not be set properly. check the dependent libraries for this  cobol exe file.
# ldd ./SAMPLE
# if any are not pointed properly, use below command
# for ex
#[centos@ip-10-0-1-92 cobol]$ ldd SAMPLE
#        linux-vdso.so.1 =>  (0x00007fff317c9000)
#        libcob.so.4 => not found
# libcob.so.4 is unmapped.

export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

#Execute the program
./SAMPLE


