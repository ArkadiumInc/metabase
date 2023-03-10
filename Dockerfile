FROM metabase/metabase:v0.36.3
RUN wget https://github.com/enqueue/metabase-clickhouse-driver/releases/download/0.6/clickhouse.metabase-driver.jar -P /plugins/
RUN chmod 744 /plugins/clickhouse.metabase-driver.jar
