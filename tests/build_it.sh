#!/bin/bash
docker build -t iain17/meteord:base ../base
docker build -t iain17/meteord:onbuild ../onbuild
docker build -t iain17/meteord:devbuild ../devbuild
docker build -t iain17/meteord:binbuild ../binbuild