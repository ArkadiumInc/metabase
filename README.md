# A [metabase](https://github.com/metabase/metabase) docker image packed with [clickhouse](https://github.com/ClickHouse/metabase-clickhouse-driver) driver.

## Why
Official metabase docker image doesn't contain clickhouse DB driver.

## Example

Run it directly in Docker:

```sh
docker run --rm -it -p3000:3000 ghcr.io/arkadiuminc/metabase:v0.37.3
```

Use it in docker-compose:

```yaml
version: "3.2"

services:
  clickhouse:
    image: bitnami/clickhouse
    container_name: clickhouse
    logging:
      driver: "none"
    ports:
      - "8123:8123"
      - "9000:9000"
      - "9004:9004"
    volumes:
      - ch_data:/var/lib/clickhouse
    environment:
      - CLICKHOUSE_ADMIN_PASSWORD=admin
  metabase:
    image: ghcr.io/arkadiuminc/metabase:v0.37.3
    ports:
      - "3000:3000"
```

## Arkadium

[We are hiring!](https://apply.workable.com/arkadium-1/?utm_source=github)
