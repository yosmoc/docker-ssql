#!/bin/bash
set -u

for f in /docker-entrypoint-initdb.d/ddl/*; do
	psql -v ON_ERROR_STOP=1 -U postgres <<-EOSQL
		create database "${f##*/}";
		\connect ${f##*/};
		\i $f;
	EOSQL
done
