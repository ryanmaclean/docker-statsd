FROM ubuntu:14.10
MAINTAINER Ryan MacLean <ryan@ryanmaclean.com>

ADD ./bin/build /bin/build
RUN /bin/build
ADD ./config.js /opt/statsd/

WORKDIR /opt/statsd

EXPOSE 8125/udp
EXPOSE 8126

ENTRYPOINT ["node", "stats.js", "config.js"]
