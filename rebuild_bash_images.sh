#!/bin/bash

## Re-build base images both Web and DB


echo "Re-build base images both Web and DB \n\n"

echo "Main script pwd is $PWD"
cd /media/sf_git/private/DockerCompose/db/basepgbrm/
sh /media/sf_git/private/DockerCompose/db/basepgbrm/build_base.sh
cd /media/sf_git/private/DockerCompose/web/baseWebImage/
sh /media/sf_git/private/DockerCompose/web/baseWebImage/build_base.sh