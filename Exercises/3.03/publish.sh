#!/bin/bash

git_repository="https://github.com/${1}.git"
git_repository_directory=(${1//\// })
docker_repository=$2

echo "=== Cloning repository ==="

git clone $git_repository

echo "=== Building image ==="

docker build ${git_repository_directory[1]} -t $docker_repository

echo "=== Publishing to dockerhub ==="

docker push $docker_repository

echo "=== cleaning up ==="

rm -r ${git_repository_directory[1]}