#!/bin/bash

COMPOSE_FILE=./docker/compose/docker-compose.yml

docker compose -f "${COMPOSE_FILE}" down -v

docker compose -f "${COMPOSE_FILE}" up --build -d

docker compose -f "${COMPOSE_FILE}" logs --tail 64 -tf

