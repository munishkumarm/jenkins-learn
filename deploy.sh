#!/bin/bash
dockerExits = docker ps | grep "jenkins-learn" -c
if ! [ $dockerExist == 0 ]
then
  echo "Docker Exists"
else
  echo "No Docker Container Runnig on that name"
   docker build -t munish/jenkins-learn .
    docker run -dp 3500:3500 munish/jenkins-learn
    docker ps
fi
