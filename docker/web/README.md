- In api folder `/docker/web`
- Build the image

```bash
docker build -t web .
```

- Run the container

```bash
docker run --rm -d --name web -p 3000:3000 web
```
