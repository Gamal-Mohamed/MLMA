#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="gamalmohamed/new-repo"


# Step 2:
# Authenticate & tag
#echo "Docker ID and Image: $dockerpath"
docker login --username gamalmohamed
docker tag udaproimage:latest gamalmohamed/new-repo:firstpush

# Step 3:
# Push image to a docker repository
docker push gamalmohamed/new-repo:firstpush