#!/usr/bin/env bash

dockerpath="dockerdartisan/udpapi"
  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

docker login &&\
    docker image tag udpapi $dockerpath

# Step 3:
docker image push $dockerpath
