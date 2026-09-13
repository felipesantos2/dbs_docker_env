#!/usr/bin/env bash

# chamod +x down.sh

echo "Removendo os Containers ..."
docker compose -f ./mysql/docker-compose.yml down
docker compose -f ./pgsql/docker-compose.yml down