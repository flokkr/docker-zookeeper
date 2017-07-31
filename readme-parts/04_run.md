
## Examples

For getting started use the included docker-compose file and start both hdfs and yarn clusters:

```
docker-compose up -d
```

You can adjust the settings in the docker-compose file according to the naming convention.

## Smoketest

```
docker-compose exec zookeeper zkCli.sh
ls /
```

For full quorum install see the [runtime-compose](https://github.com/flokkr/runtime-compose/tree/master/zookeeper) repository.
