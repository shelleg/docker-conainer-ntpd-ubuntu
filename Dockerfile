FROM ubuntu:16.04
MAINTAINER hagzag@tikalk.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y ntp

EXPOSE 123/udp

CMD ["/usr/sbin/ntpd", "-d"]
