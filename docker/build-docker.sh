#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-eboupay/eboud-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/eboud docker/bin/
cp $BUILD_DIR/src/ebou-cli docker/bin/
cp $BUILD_DIR/src/ebou-tx docker/bin/
strip docker/bin/eboud
strip docker/bin/ebou-cli
strip docker/bin/ebou-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
