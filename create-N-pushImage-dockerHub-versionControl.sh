#!bin/bash
#---------------------------
# Prerequisits -  RUN : dockerHub-login.sh
# RUN : shell scripts - sh create-N-pushImage-dockerHub.sh <Docker_Image_Name> <Docker-HUB-UserID>
#--------------------------------------
IMG_NAME=$1
UID=$2

sudo docker build -t $IMG_NAME:1.$BUILD_ID .

sudo docker tag $IMG_NAME:1.$BUILD_ID $UID/$IMG_NAME:1.$BUILD_ID
sudo docker tag $IMG_NAME:1.$BUILD_ID $UID/$IMG_NAME:latest

sudo docker push $UID/$IMG_NAME:1.$BUILD_ID
sudo docker push $UID/$IMG_NAME:latest

sudo docker rmi $IMG_NAME:1.$BUILD_ID $UID/$IMG_NAME:1.$BUILD_ID $UID/$IMG_NAME:latest
#docker rmi $(docker images -a -q)
