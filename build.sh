#!/usr/bin/env bash

set -e

sudo apt-get update

sudo apt-get install -y cmake g++ pkg-config vim-common

# TODO: should figure object file replacements for
# run-time dependencies.
sudo apt-get install -y libwebsockets-dev libjson-c-dev libssl-dev libevent-dev

git clone --depth=1 --branch aghost7/powerline-font https://github.com/AGhost-7/ttyd.git /tmp/ttyd

cd /tmp/ttyd
mkdir build
cd build
cmake ..
make
sudo make install

# Cleanup
rm -rf /tmp/ttyd
sudo apt-get purge -y cmake g++ pkg-config vim-common
sudo apt-get clean
sudo rm -rf /var/lib/apt/lists/*
