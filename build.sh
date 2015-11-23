#!/usr/bin/env bash
cd base
docker rmi focuswebsolutions/meteord-base
docker build -t focuswebsolutions/meteord-base .
docker push focuswebsolutions/meteord-base
cd ../base2/
docker rmi focuswebsolutions/meteord-base2
docker build -t focuswebsolutions/meteord-base2 .
cd ../base3/
docker build -t focuswebsolutions/meteord .
cd ../
docker push focuswebsolutions/meteord