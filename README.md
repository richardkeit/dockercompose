# Docker compose demostration for basic web application with scaling

## Docker-Compose Version 2 file format used


### Recreate both web and database base images

```sh

sh rebuild_bash_images.sh

```

### Docker-Compose bring up services (without build)

```sh

docker-compose up

```

### Docker-Compose bring up services (with build)

```sh

docker-compose up --build

```

### Docker-Compose scale up services (web services

```sh

docker-compose scale web=4

```
