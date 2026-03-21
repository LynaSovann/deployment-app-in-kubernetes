# MinIO Docker Guide

## Build the image

From the `/docker/minio` directory

```bash
docker build -t minio .
```

## Push to Docker Hub

- Tag and push the image:

```bash
docker tag minio lynakiddy/k8s-minio
```

```bash
docker push lynakiddy/k8s-minio
```
