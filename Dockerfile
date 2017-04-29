FROM resin/rpi-raspbian:jessie

MAINTAINER Andreas Mahnke <mahnkong@gmx.de>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y polipo

COPY files/polipo/config /etc/polipo/config
COPY files/entrypoint.sh /entrypoint.sh

EXPOSE 8118
ENTRYPOINT ["/entrypoint.sh"]

