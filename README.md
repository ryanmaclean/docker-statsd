# Docker Statsd

A simple docker container for running [statsd](https://github.com/etsy/statsd/), configured
via etcd and confd.

## Usage

Ensure that you have [carbon](https://github.com/ejholmes/docker-carbon) running prior. Set
the `/carbon/host` key in etcd:

```bash
$ etcdctl set /carbon/host 10.0.0.10
```

Start up statsd

```bash
$ docker run --rm --name statsd --env ETCD=http://<ip>:4001 \
    -p 8125:8125/udp -p 8126:8126 ejholmes/statsd
```

Send some metrics to it:

```bash
$ echo -n "example.statsd.counter.changed:10|c" | nc -w 1 -u localhost 8125
```
