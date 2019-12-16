# Apache Zookeeper Docker images

These images are part of the bigdata [Docker image series](https://github.com/flokkr). All of the images use the same [base docker image](https://github.com/flokkr/docker-baseimage) which contains advanced configuration loading.

It supports configuration based on environment variables (using specific naming convention), downloaded from consul and other plugins (for example to generate kerberos keystabs). See the details in the [launcher](https://github.com/flokkr/launcher/) repository.

## Usage

The easiest way to run a storm cluster is just use the included ```docker-compose.yaml``` file.

Checkout the repository and do a ```docker-compose up -d``` 

You can adjust the settings in the `compose-config` file.

To run it in Kubernetes see the [Flokkr](https://github.com/flokkr/k8s) which provides a framework to run (Apache) Big data projects in kubernetes with the help of [Flekszible](https://github.com/elek/flekszible)
