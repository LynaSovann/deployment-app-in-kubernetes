# Web Docker Guide

## Build the image

From the `/docker/web` directory

```bash
docker build -t web .
```

## Run the container

```bash
docker run --rm -d --name web -p 3000:3000 web
```

## Push to Docker Hub

- Tag and push the image:

```bash
docker tag web lynakiddy/k8s-web
```

```bash
docker push lynakiddy/k8s-web
```
