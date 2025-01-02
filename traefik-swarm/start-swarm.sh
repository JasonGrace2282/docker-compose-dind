#!/bin/sh

if ! docker info | grep -q "Swarm: active"; then
  # it's important that the docker service is only attached to one network
  # otherwise, we would need to specify the manager address with --advertise-addr
  docker swarm init
  docker network create --driver=overlay --attachable traefik-public
  docker stack deploy -c /app/traefik-services.yml traefik
fi
