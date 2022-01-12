#!/bin/bash
docker run --detach \
	--name mariadb-movie \
	--publish 3307:3307 \
	--env MARIADB_DATABASE=dbmovie \
	--env MARIADB_USER=g4user \
	--env MARIADB_PASSWORD=password \
	--env MARIADB_ROOT_PASSWORD=password \
	docker.io/library/mariadb:latest

#	--mount type=bind,src="$(pwd)"/sql/mysql_mariadb,target=/docker-entrypoint-initdb.d \

