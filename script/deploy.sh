#!/bin/bash

# Define variables
region="ap-southeast-1"
account="351029054045"
repository="aws-ci-cd-project"

# Login to ECR
aws ecr get-login-password --region ${region} | docker login --username AWS --password-stdin ${account}.dkr.ecr.${region}.amazonaws.com

# Pull latest image
docker pull ${account}.dkr.ecr.${region}.amazonaws.com/${repository}:latest

# Stop and remove existing container if exists
docker stop webapp || true
docker rm webapp || true

# Run new container
docker run -d --name webapp -p 80:80 ${account}.dkr.ecr.${region}.amazonaws.com/${repository}:latest