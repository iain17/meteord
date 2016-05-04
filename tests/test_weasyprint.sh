#!/bin/bash

function clean() {
  docker rm -f weasyprint_check
}

clean
docker run  \
    --name weasyprint_check \
    --entrypoint="/bin/bash" \
    iain17/meteord -c 'weasyprint -h && weasyprint --version'

sleep 5

appContent=`docker logs weasyprint_check`
clean

if [[ $appContent != *"GhostDriver"* ]]; then
  echo "Failed: Weasyprint Check"
  exit 1
fi