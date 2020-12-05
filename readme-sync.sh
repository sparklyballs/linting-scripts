#!/bin/bash

docker pull lsiodev/readme-sync-armhf

docker run --rm=true \
	-e USE_ENV_CREDENTIALS=true \
	-e DOCKERHUB_USERNAME=${SECRETUSER} \
	-e DOCKERHUB_PASSWORD=${SECRETPASS} \
	-e GIT_REPOSITORY=${GIT_REPOSITORY} \
	-e DOCKER_REPOSITORY=${DOCKER_REPOSITORY} \
	-e GIT_BRANCH=${GIT_BRANCH} \
	lsiodev/readme-sync-armhf \
	bash -c 'node sync' \
