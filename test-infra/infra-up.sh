#!/bin/sh

mkdir -p /tmp/spire/sockets
docker-compose -f ./test-infra/docker-compose.yaml up -d spire-server spire-agent
sleep 5
docker-compose -f ./test-infra/docker-compose.yaml up -d spire-agent
sh ./test-infra/register.sh
sh ./test-infra/show-bundle.sh