# Traefik with Docker Swarm

> [!NOTE]
> This is currently not fully working. My best guess as to why is
> that traefik is not on the same network that it's looking through,
> but I'm not quite sure.

This starts a `traefik` service that
- Listens to a network in a `docker swarm`
- serves a default nginx config at http://nginx.example.com.

- `compose.yaml` is where the docker service / swarm setup / traefik setup is.
- `start-swarm.sh` sets up the docker swarm and deploys nginx
- `traefik-services.yml` is the configuration for the `nginx` service.
