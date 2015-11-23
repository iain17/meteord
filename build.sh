#!/usr/bin/env bash
cd base
docker rmi iain17/meteord-base
docker build -t iain17/meteord-base .
docker push iain17/meteord-base
cd ../base2/
docker rmi iain17/meteord-base2
docker build -t iain17/meteord-base2 .
cd ../base3/
docker build -t iain17/meteord .
cd ../
docker push iain17/meteord