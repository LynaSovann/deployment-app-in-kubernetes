- In api folder `/docker/api`
- Build the image

```bash
docker build -t app .
```

- Run the container

```bash
docker run --env-file .env --rm -d -p 8080:8080 app
```
