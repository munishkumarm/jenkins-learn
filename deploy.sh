#!/bin/sh
DE=$(docker ps | grep "jenkinslearndocker1" -c)
#echo $DE
if [ $DE > 0 ];
then
  echo "Docker Running"
  echo "STOPPING RUNNING CONTAINER"
  docker stop jenkinslearndocker1
  echo "CONTAINER STOPPED"
  echo "UPDATING IMAGE WITH LATEST CHANGES"
  docker build -t munish/jenkins-learn .
  echo "CHNAGES UPDATED"
  echo "RUN CONTAINER"
  docker run --name jenkinslearndocker1 -dp 3500:3500 munish/jenkins-learn
  echo "DEPLOYMENT SUCCESS"
else
  echo "No Docker Container Runnig on that name"
  docker build -t munish/jenkins-learn .
  docker run --name jenkinslearndocker1 -dp 3500:3500 munish/jenkins-learn
  docker ps
fi
