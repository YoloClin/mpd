FROM ubuntu:latest
MAINTAINER yoloClin <yoloClin@github.com>

RUN apt-get update && \
        apt-get install -y mpd sudo bash

COPY run.sh /run.sh
COPY mpd.conf.template /etc/mpd.conf.template

VOLUME /var/mpd /audio

CMD ["bash", "-c", "/run.sh"]

EXPOSE 6600
