#!/usr/bin/env bash

set -e

docker build -t aghost7/nodejs-online .

docker run --rm -ti -p 7681:7681 aghost7/nodejs-online -c aghost7:hai bash
