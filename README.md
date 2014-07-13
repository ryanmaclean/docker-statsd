# Docker Statsd

A simple docker container for running [statsd](https://github.com/etsy/statsd/).

## Usage

Start up statsd

```bash
$ docker run --rm --name statsd --env GRAPHITE_HOST=graphite.example.com \
    -p 8125:8125/udp -p 8126:8126 ejholmes/statsd
```

Send some metrics to it:

```bash
$ echo -n "example.statsd.counter.changed:10|c" | nc -w 1 -u localhost 8125
```
