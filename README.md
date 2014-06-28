# Docker Statsd

A simple docker container for running statsd.

## Usage

Start up statsd

```bash
$ docker run -p 8125:8125/udp -p 8126:8126 ejholmes/statsd
```

Send some metrics to it:

```bash
$ echo -n "example.statsd.counter.changed:$value|c" | nc -w 1 -u localhost 8125
```
