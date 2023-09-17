#!/bin/bash
dockerExits = docker ps | grep "jenkins-learn" -c
if [ dockerExist -ge 0 ]
then
  echo "Docker Exists"
else
  echo "No Docker Container Runnig on that name"
  sh "docker build -t munish/jenkins-learn ."
  sh "docker run -dp 3500:3500 munish/jenkins-learn"
fi
