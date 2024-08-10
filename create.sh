#!/bin/sh
mkdir ./apps
cd ./apps
mkdir ./immich-app
mkdir ./portainer
mkdir ./dozzle

wget -O ./immich-app/docker-compose.yml https://raw.githubusercontent.com/kmkarthick92/dockercomposefiles/master/immich/docker-compose.yml
wget -O ./immich-app/.env https://raw.githubusercontent.com/kmkarthick92/dockercomposefiles/master/immich/.env
wget -O ./immich-app/hwaccel.transcoding.yml https://raw.githubusercontent.com/kmkarthick92/dockercomposefiles/master/immich/hwaccel.transcoding.yml
wget -O ./portainer/docker-compose.yml https://raw.githubusercontent.com/kmkarthick92/dockercomposefiles/master/docker-compose-portainer.yml
wget -O ./dozzle/docker-compose.yml https://raw.githubusercontent.com/kmkarthick92/dockercomposefiles/master/docker-compose-dozzle.yml

docker compose -f ./portainer/docker-compose.yml up -d
docker compose -f ./dozzle/docker-compose.yml up -d
docker compose -f ./immich-app/docker-compose.yml up -d
