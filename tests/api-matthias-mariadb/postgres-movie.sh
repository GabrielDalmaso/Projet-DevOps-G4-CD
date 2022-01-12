#!/bin/bash
docker run --detach \
	--name postgresdb-movie \
	--publish 5432:5432 \
	--env POSTGRES_DATABASE=dbmovietest \
	--env POSTGRES_USER=g4user \
	--env POSTGRES_PASSWORD=password \
	--env POSTGRES_ROOT_PASSWORD=password \
	postgres:latest

