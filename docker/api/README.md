# API Docker Guide

## Build the image

From the `/docker/api` directory

```bash
docker build -t app .
```

## Run the container

```bash
docker run --env-file .env --rm -d -p 8080:8080 app
```

## Push to Docker Hub

- Tag and push the image:

```bash
docker tag app lynakiddy/k8s-api
```

```bash
docker push lynakiddy/k8s-api
```
