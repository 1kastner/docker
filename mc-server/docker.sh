#!/bin/bash

if [ "$1" = "release" ]; then
  sed -e "s;%JAR%;$1;g" Dockerfile.template > Dockerfile
  
  sudo docker.io build -t "latest" .
  
  exit
fi

echo "  push           Builds and pushes the image"

