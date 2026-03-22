# Web Docker Guide

## Build the image

From the `/docker/web` directory

```bash
docker build --build-arg NEXT_PUBLIC_API_URL=http://kubernetes.lynasovann.site/api -t lynakiddy/k8s-web .
```

## Run the container

```bash
docker run --rm -d --name web -p 3000:3000 web
```

## Push to Docker Hub

```bash
docker push lynakiddy/k8s-web
```
