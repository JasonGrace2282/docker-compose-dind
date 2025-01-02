# Docker Compose + Docker-in-Docker

Docker in Docker (DinD for short) is a technique that allows creating
and running docker containers inside of a docker container. This
repository shows some example configurations of how to use DinD
with Docker Compose.

Note that these examples are intended for development only. If you
intend to use it in production, consider replacing the `priviledged: true`
with a runtime like [sysbox](https://github.com/nestybox/sysbox).

## Table of Contents

- `basic-example/`: a basic example of a client service needing the docker-in-docker service.
- `traefik-swarm/`: an example of how to use traefik to route requests into swarm services running inside docker-in-docker.
