#!/bin/bash
set -x
export IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost +
cp .Xmodmap ~/
xmodmap .Xmodmap
docker-compose up
