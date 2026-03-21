# =========================
# Stage 1: Clone code
# =========================
FROM alpine/git AS clone-code
WORKDIR /app
RUN git clone -b env https://github.com/LynaSovann/backend-for-testing.git .

# =========================
# Stage 2: Build
# =========================
FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY --from=clone-code /app /app
ENV MAVEN_OPTS="-Xmx512m"
RUN mvn clean package -DskipTests -T 1C

# =========================
# Stage 3: Run
# =========================
FROM eclipse-temurin:17-jdk

LABEL Project="k8s"
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

ENV SPRING_DATASOURCE_URL=jdbc:postgresql://209.97.159.100:5432/accounts
ENV SPRING_DATASOURCE_USERNAME=admin
ENV SPRING_DATASOURCE_PASSWORD=admin123

ENV MINIO_URL=http://209.97.159.100:9000
ENV MINIO_ACCESS_NAME=admin
ENV MINIO_ACCESS_SECRET=admin123
ENV MINIO_BUCKET_NAME=profile-image

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]