set -e
DOCKER_TAG=${DOCKER_TAG:-latest}
docker build -t elek/zookeeper:$DOCKER_TAG .
