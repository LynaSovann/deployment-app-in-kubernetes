FROM minio/minio:latest

LABEL Project="k8s"
ENV MINIO_ROOT_USER=admin
ENV MINIO_ROOT_PASSWORD=admin123

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]