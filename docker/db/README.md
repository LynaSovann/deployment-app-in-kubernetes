# DB Docker Guide

## Build the image

From the `/docker/db` directory

```bash
docker build -t db .
```

## Run the container

```bash
docker run --name db --rm -d -p 5432:5432 db
```

## Push to Docker Hub

- Tag and push the image:

```bash
docker tag db lynakiddy/k8s-db
```

```bash
docker push lynakiddy/k8s-db
```
