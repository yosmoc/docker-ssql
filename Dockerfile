FROM postgres:9.6

COPY test.sql /docker-entrypoint-initdb.d/
