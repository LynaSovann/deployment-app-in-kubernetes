#!/bin/sh

minio server /data --console-address ":9001" &

sleep 5

if ! command -v mc >/dev/null 2>&1; then
  curl -s https://dl.min.io/client/mc/release/linux-amd64/mc -o /usr/bin/mc
  chmod +x /usr/bin/mc
fi

mc alias set local http://localhost:9000 $MINIO_ROOT_USER $MINIO_ROOT_PASSWORD

mc mb --ignore-existing local/profile-image

mc anonymous set public local/profile-image

wait