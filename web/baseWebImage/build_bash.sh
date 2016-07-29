#!/bin/bash

## Richard Keit ##


## build docker file as ##
cd /media/sf_git/private/DockerCompose/db/basepgbrm/
echo "Child web script pwd is $PWD"
touch /media/sf_git/private/DockerCompose/db/basepgbrm/richard

docker build --no-cache -t richardkeit/centos:baseweb --file /media/sf_git/private/DockerCompose/db/basepgbrm/Dockerfile