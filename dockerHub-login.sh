#!bin/bash
# -----------------------------------------
## README ##
# "current users" should be a part of docker group else - use sudo before run docker command
# COMMAND SYNTAX =  dockerHub-login.sh <DOCKER_HUB_USER_ID> <DOCKER_HUB_PASS>
# -----------------------------------------
docker logout
#DOCKER_PASS='********'
#DOCKER_USER='******'
DOCKER_USER=$1
DOCKER_PASS=$2
echo $DOCKER_PASS | docker login -u$DOCKER_USER --password-stdin
#echo $DOCKER_PASS | docker login -u$DOCKER_USER --password-stdin $DOCKER_HOST
