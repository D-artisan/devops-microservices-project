#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
dockerpath="dockerdartisan/udpapi"

# Step 2:
# Run the Docker Hub container with kubernetes
kubectl run udpapi --image=$dockerpath --port=80 --labels app=udpapi

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udpapi 8000:80
