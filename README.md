# Apache Zookeeper Docker images

These images are part of the big-data [Docker image series](https://flokkr.github.io). All of the images use the same [base docker image](https://github.com/flokkr/docker-baseimage) which contains advanced configuration loading and provides Kubernetes example resources..

## Getting started

Repository contains generated Kubernetes examples (`/examples`) and re-usable flekszible definitions.

To generate your own resources, use [flekszible](https://github.com/elek/flekszible):

```
flekszible source add github.com/elek/docker-zookeeper
flekszible app add zookeeper
flekszible generate
```