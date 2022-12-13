# docker-compose project for TIG stack.

## Usage

Update "influxv2.env", replace with your values.
```bash
cat << 'EOF' > influxdb-v2.env
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
*   influxdb-v2 will be exposed at port 8086.
*   telegraf-proxy will be exposed at port 8088 to be used by downstream telegraf collectors.
*   grafana will be exposed at port 3000. Default username/password = admin/admin


Add more buckets in influx for your deployment, telegraf-proxy will route mettrics from downstreams telegrafs per their "bucket" configuration.

## Contributing
Pull requests are welcome.