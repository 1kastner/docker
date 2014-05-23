#!/bin/bash

if [ "$1" = "buildpush" ]; then  
   sudo docker.io build -t "dmadk/javabox" .
   echo Trying to log in @ docker.io
   sudo docker.io login -u dmadk  -p dmadk123 -e kav@kav.dk
   sudo docker.io push dmadk/javabox
   exit     
else
    echo Unknown target: "$1"
    echo Valid targets are:
fi

echo "buildpush           Builds and pushes the image"

