#!/usr/bin/env bash

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker ps -a | wc -l

cd base
#docker rmi iain17/meteord-base
docker build -t iain17/meteord-base .
docker push iain17/meteord-base
cd ../base2/
#docker rmi iain17/meteord-base2
docker build -t iain17/meteord-base2 .
cd ../base3/
docker build -t iain17/meteord .
cd ../
docker push iain17/meteord