#s6example

To recreate eating of the SIGTERM:

```
env GOOS=linux go build
docker build -t ex .
docker run -it --rm ex
```
