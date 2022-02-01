#!/bin/bash
set -e

cd /data-valhalla

if [ "$1" == "dev" ]; then
	wget https://develop-swarm-woosmap-eu-west-3.s3.eu-west-3.amazonaws.com/valhalla-dev/valhalla_tiles.tar
	wget https://develop-swarm-woosmap-eu-west-3.s3.eu-west-3.amazonaws.com/valhalla-dev/valhalla.json
fi