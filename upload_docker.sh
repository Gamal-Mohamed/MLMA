#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="gamalmohamed/mlma"


# Step 2:
# Authenticate & tag
#echo "Docker ID and Image: $dockerpath"
docker tag udaproimage:latest gamalmohamed/mlma:udaproimage
cat ./my_pass.txt | docker login --username gamalmohamed --password-stdin

# Step 3:
# Push image to a docker repository
docker push gamalmohamed/mlma:udaproimage