FROM debian:10

MAINTAINER John Marlo Evangelista <ejohnmarlo@gmail.com>

RUN apt-get -y update \
&& apt-get install -y vim isc-dhcp-server \
&& apt-get -y autoremove \
&& apt-get -y clean \
&& rm -rf /var/lib/apt/lists/*

WORKDIR root

COPY util util

CMD util/entrypoint.sh
