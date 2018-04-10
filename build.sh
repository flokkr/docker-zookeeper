#!/usr/bin/env bash

set -x 

build() {
	docker build --build-arg URL=$URL --label io.github.flokkr.zookeeper.version=$ZOOKEEPER_VERSION -t flokkr/zookeeper:${TAG} .
}

deploy() {
	docker push flokkr/zookeeper:${TAG}
}

TAG=latest
ZOOKEEPER_VERSION=3.4.11

while getopts ":v:t:" opt; do
  case $opt in
    v)
      ZOOKEEPER_VERSION=$OPTARG >&2
      ;;
    t)
      TAG=${OPTARG:-$ZOOKEEPER_VERSION}
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

export URL=https://www-eu.apache.org/dist/zookeeper/zookeeper-$ZOOKEEPER_VERSION/zookeeper-$ZOOKEEPER_VERSION.tar.gz

shift $(($OPTIND -1))
eval $*
