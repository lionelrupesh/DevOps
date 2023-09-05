#!/bin/bash

echo "We are now building our application"
pwd
whoami
cd ./docker/docker-examples
pwd
docker image build -t suryaraj/devops-evening:v1.$BUILD_NUMBER .
docker push suryaraj/devops-evening:v1.$BUILD_NUMBER
echo "Now running a containner"
docker container stop my-app || true
docker container rm my-app || true
docker run -itd --name my-app -p 8081:3000 suryaraj/devops-evening:v1.$BUILD_NUMBER
docker ps
