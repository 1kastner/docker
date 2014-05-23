#!/bin/bash

if [ "$1" = "build" ]; then
  URL=http://repository-dma.forge.cloudbees.com/release/net/maritimecloud/maritimecloud-server/$2/maritimecloud-server-$2.jar
  sed -e "s;%JAR%;$URL;g" Dockerfile.template > Dockerfile
  sudo docker.io build -t "dmadk/mc-server:$2" .
  exit
elif [ "$1" = "push" ]; then  
   echo Trying to log in @ docker.io
  sudo docker.io login -u dmadk  -p dmadk123 -e kav@kav.dk
  sudo docker.io push dmadk/mc-server
  exit     
else
    echo Unknown target: "$1"
    echo Valid targets are:
fi

echo "  build <version>   Builds a version from cloudbees using the specified version"
echo "  push              Pushes all version to docker.io"
