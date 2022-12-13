# docker-compose project for TIG stack.

## Usage

Update "influxv2.env", replace with your values.
```bash
cat << 'EOF' > influxv2.env
DOCKER_INFLUXDB_INIT_MODE=setup
DOCKER_INFLUXDB_INIT_USERNAME=<initial user>
DOCKER_INFLUXDB_INIT_PASSWORD=<initial password>
DOCKER_INFLUXDB_INIT_ORG=<org>
DOCKER_INFLUXDB_INIT_BUCKET=<initial-bucket>
DOCKER_INFLUXDB_INIT_ADMIN_TOKEN=<API token for influxdb>
DOCKER_INFLUXDB_INIT_RETENTION=1h
PROXY_TOKEN=<API token for telegraf proxy>
EOF
```

## Spin up the stack

```bash
docker-compose up -d
```

Per default:
*   influxdb-v2 will be reachable at http://localhost:8086.
*   telegraf-proxy will be reachable at http://localhost:8088.
*   grafana will be rechable at http://localhost:3000 with influxdb-v2 as a pre provisioned datasource.


Add more buckets in influx for your deployment, telegraf-proxy will route mettrics from downstreams telegrafs per their "bucket" configuration.

## Contributing
Pull requests are welcome.