# s6example

To recreate eating of the SIGTERM:

```
env GOOS=linux go build
docker build -t ex .
docker run -it --rm ex
```

In another terminal get the container's id with `docker ps` and then run `docker stop <id>`.

The go app never receives the signal.
