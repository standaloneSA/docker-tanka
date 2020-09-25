#!/usr/bin/env bash

IMAGE="docker-tanka:`date +%Y-%m-%d`"

docker build . -t $IMAGE

if [ "$1" == "--latest" ] ; then 
    docker tag $IMAGE docker-tanka:latest
fi


