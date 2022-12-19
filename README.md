# docker-compose project for TIG stack.
```
                        +--------------------+                        
                        |                    |                        
                        |      grafana       |                        
                        |                    |                        
                        |                    |                        
                        +--------------------+                        
                                   +                                  
                                   +                                  
                                   +                                  
                        +--------------------+                        
                        |                    |                        
                        |     influxdb-v2    |                        
                        |                    |                        
                        |                    |                        
                        +--------------------+                        
                                   +                                  
                                   +                                  
                                   +                                  
                        +--------------------+                        
                        |                    |                        
                        |   telegraf-proxy   |                        
                        |                    |                        
                        |                    |                        
                        +--------------------+                        
                       +           +          +                       
                      +            +           +                      
                     +             +            +                     
+--------------------+  +--------------------+  +--------------------+
|                    |  |                    |  |                    |
|    telegraf        |  |     telegraf       |  |     telegraf       |
|    downstream      |  |     downstream     |  |     downstream     |
|                    |  |                    |  |                    |
+--------------------+  +--------------------+  +--------------------+
```
## Usage

Copy ".env.example" to .env and set your values.
```bash
cp .env.example .env
```

## Spin up the stack

```bash
docker-compose up -d
```

Per default:
*   influxdb-v2 will be exposed at port 8086.
*   telegraf-proxy will be exposed at port 8088 to be used by downstream telegraf collectors. Metrics will be forwarded to the right bucket via the "bucket_tag" configuration.
*   grafana will be exposed at port 3000. Default username/password = admin/admin
*   buckets for storing docker and system metrics are auto provisioned via volume mount "./influxdb-v2/scripts:/docker-entrypoint-initdb.d:ro".

## Contributing
Pull requests are welcome.