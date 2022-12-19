#!/bin/sh

set -e
influx bucket create \
    -n ${INFLUXDB_DOCKER_BUCKET} \
    -o ${DOCKER_INFLUXDB_INIT_ORG} \
    -r 30d

influx bucket create \
    -n ${INFLUXDB_SYSTEM_BUCKET} \
    -o ${DOCKER_INFLUXDB_INIT_ORG} \
    -r 30d