#!/bin/bash

docker image rm -f capd-bot:latest

docker build -f docker/Dockerfile -t capd-bot:latest capd-bot/

if [ "$(docker images | grep capd-bot)" ]; then
  docker run -dp 5005:5005 --rm -it capd-bot
fi
