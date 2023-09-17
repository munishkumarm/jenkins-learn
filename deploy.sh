#!/bin/bash
dockerExits = docker ps | grep "jenkins-learn" -c
if [ dockerExist -ge 0 ]
then
  echo "Docker Exists"
else
  echo "No Docker Container Runnig on that name"
fi
