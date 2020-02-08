FROM debian:10

MAINTAINER John Marlo Evangelista <ejohnmarlo@gmail.com>

WORKDIR root/

RUN apt-get -y update \
&& apt-get install -y curl isc-dhcp-server \
&& apt-get -y autoremove \
&& apt-get -y clean \
&& rm -rf /var/lib/apt/lists/*

COPY util /util

CMD [“util/entrypoint.sh"]
