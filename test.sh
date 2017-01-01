#!/usr/bin/env bash

set -e

set -o verbose

docker build -t aghost7/nodejs-online .

docker run -d --name nodejs-online 

docker kill nodejs-online

docker rm nodejs-online
