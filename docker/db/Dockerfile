FROM postgres:16-alpine

LABEL Project="k8s"

ENV POSTGRES_PASSWORD=admin123
ENV POSTGRES_USER=admin
ENV POSTGRES_DB=product

COPY table.sql /docker-entrypoint-initdb.d/