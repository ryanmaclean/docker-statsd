FROM ubuntu:12.04
MAINTAINER Eric Holmes <eric@ejholmes.io>

ADD ./bin/start /bin/start
ADD ./bin/build /bin/build
RUN /bin/build

EXPOSE 8125/udp
ENTRYPOINT ["/bin/start"]
CMD []
