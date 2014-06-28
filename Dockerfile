FROM ubuntu:12.04
MAINTAINER Eric Holmes <eric@ejholmes.io>

ENV GRAPHITE_HOST localhost
ENV GRAPHITE_PORT 2003

ADD ./bin/start /bin/start
ADD ./bin/build /bin/build
RUN /bin/build
ADD ./config.js.erb /opt/statsd/config.js.erb

EXPOSE 8125/udp
EXPOSE 8126

ENTRYPOINT ["/bin/start"]
CMD []
