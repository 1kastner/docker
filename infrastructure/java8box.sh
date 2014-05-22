#!/bin/bash

if [ "$1" = "javadoc" ]; then
  sudo docker.io build -t "latest" java8box.docker
  
  exit
fi

echo "  push           Builds and pushes the image"

