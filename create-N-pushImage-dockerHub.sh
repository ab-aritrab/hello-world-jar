#!bin/bash
#--------------------------
# Prerequisits -  RUN : dockerHub-login.sh
# RUN : shell scripts - sh create-N-pushImage-dockerHub.sh <Docker_Image_Name> <Docker-HUB-UserID>
#--------------------------
IMG_NAME=$1
UID=$2
sudo docker build -t $IMG_NAME .
sudo docker tag $IMG_NAME  $UID/$IMG_NAME 
sudo docker push $UID/$IMG_NAME 
sudo docker rmi $IMG_NAME  $UID/$IMG_NAME
#docker rmi $(docker images -a -q)
