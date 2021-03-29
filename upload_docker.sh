#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="Gamal-Mohamed/mlma"


# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag MLMA:latest $dockerpath:MLMA
ocker login --username gamalmohamed
# Step 3:
# Push image to a docker repository
docker push $dockerpath:MLMA:latest