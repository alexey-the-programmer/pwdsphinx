#!/usr/bin/env bash

aptitude install -y libsodium23
aptitude install -y libsodium-dev
aptitude install -y libsphinxbase-dev

# libsphinx
mkdir lib
mkdir temp
cd ./temp
git clone "https://github.com/stef/libsphinx"
cd libsphinx
git submodule update --init --recursive --remote
cd src
make
cp libsphinx.so /usr/local/lib/libsphinx.so
cd /app
rm -rf temp
