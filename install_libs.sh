#!/usr/bin/env bash

#mkdir temp
#
## libsodium
#cd ./temp
#wget -O "libsodium-1.0.16.tar.gz" "https://download.libsodium.org/libsodium/releases/libsodium-1.0.16.tar.gz"
#tar xzf libsodium-1.0.16.tar.gz
#cd libsodium-1.0.16
#./configure
#make && make check
#make install
#cd ../..
#
## libsodium-dev
#apt install -y libsodium-dev
#
## libsphinx
#cd ./temp
#git clone "https://github.com/stef/libsphinx"
#cd libsphinx
#git submodule update --init --recursive --remote
#cd src
#make
#cd ../../..

# remove temp folder
#rm -rf temp

aptitude install -y apt-utils
#aptitude install libsodium18
aptitude install -y libsodium-dev
aptitude install -y libsphinxbase-dev
