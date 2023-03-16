#!/bin/bash

if [ $# != 2 ]
then
  echo "Usage: docker run -it -e DOCKER_USER=<DOCKER USERNAME> -e DOCKER_PWD=<DOCKER PASSWORD> -v /var/run/docker.sock:/var/run/docker.sock jannejp/devops2023-3.04 <Github repository> <dockerhub repository>"
  exit 1
fi

git_repository="https://github.com/${1}.git"
git_repository_directory=(${1//\// })
docker_repository=$2

echo "=== Cloning repository ==="

git clone $git_repository

echo "=== Building image ==="

docker build ${git_repository_directory[1]} -t $docker_repository

echo "=== Logging in to dockerhub ==="

docker login --username=$DOCKER_USER --password=$DOCKER_PWD

echo "=== Publishing to dockerhub ==="

docker push $docker_repository

echo "=== cleaning up ==="

rm -r ${git_repository_directory[1]}