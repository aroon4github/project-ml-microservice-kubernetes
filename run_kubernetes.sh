#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=aroon4docker/udacity2

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment udacity2  --image=aroon4docker/udacity2
kubectl expose deployment udacity2 --port=80 --target-port=8000

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/udacity2 8000:80

