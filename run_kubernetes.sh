#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="gamalmohamed/mlma"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment myapp --image=gamalmohamed/mlma:udaproimage --port=80

# Step 3:
# List kubernetes pods
kubectl get deployment
kubectl get pods
kubectl get services

# Step 4:
# Forward the container port to a host
kubectl expose deployment myapp --port=80 --target-port=80
kubectl port-forward deployment/myapp 8000:80