# Kafka Dev Setup Using Docker

This replicates real deployment configurations, where you have your zookeeper servers and kafka servers actually all distinct from each other. This solves all the networking hurdles that comes with Docker and docker-compose, and is compatible cross platform.

## Stack version

* Zookeeper version: 3.5.6
* Kafka version: 2.4.0


## Requirements

* docker
* docker-compose

## How to run

`make` - Will create 3 node kafka cluster


### Available commands
```
make build                  :- building the image 
make run                    :- Run the kafka,zookeeper and kafka manager cluster in the daemon mode
make stop                   :- Stop the kafka,zookeeper and kafka manager cluster
make start                  :- Start the kafka,zookeeper and kafka manager cluster
make restart                :- Restart the kafka,zookeeper and kafka manager cluster
make zk_logs                :- Check zookeeper logs
make kafka_logs							:- Check kafka logs
make kafka_manager_logs     :- Check kafka manager logs
make kill                   :- Kill the kafka,zookeeper and kafka manager cluster
make ps                     :- Check all the running container status
```
