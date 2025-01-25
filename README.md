# Docker Compose + Docker-in-Docker

Docker in Docker (DinD for short) is a technique that allows creating
and running docker containers inside of a docker container. This
repository shows some example configurations of how to use DinD
with Docker Compose.

> [!WARNING]
> These examples are intended for development only. If you intend to use it in production, consider
> taking other precautions like using a runtime like [sysbox](https://github.com/nestybox/sysbox),
> forcing `traefik` to use a `GET`-only docker socket proxy, and other
> precautions not listed

## Table of Contents

- `basic-example/`: a basic example of a client service needing the docker-in-docker service.
- `nginx-example/`: an example of running an nginx server within docker-in-docker
- `traefik-swarm/`: an example of how to use traefik to route requests into swarm services running inside docker-in-docker. (Not working yet)
