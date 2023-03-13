#!/usr/bin/env bash

# Build image
docker build --tag=udacity-project .

# List images
docker image ls

# Run flask app
docker run -p 8000:80 udacity-project
