#!/bin/bash

sudo docker login -u getto -p "$_DOCKER_HUB_PASSWORD"
if [ $? != 0 ]; then
  exit 1
fi

for dir in *; do
  if [ -f "$dir/Dockerfile" ]; then
    sudo docker build -t getto/base:$dir $dir
    sudo docker push getto/base:$dir
  fi
done
