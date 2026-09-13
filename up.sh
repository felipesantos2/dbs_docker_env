#!/usr/bin/env bash

# chamod +x down.sh

echo "Iniciando Containers ..."
docker compose -f ./mysql/docker-compose.yml up -d
docker compose -f ./pgsql/docker-compose.yml up -d
