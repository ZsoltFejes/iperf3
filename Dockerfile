FROM ubuntu

MAINTAINER Zsolt Fejes zsolt.fejes@icloud.com

RUN apt-get update -y && apt-get install iperf3 -y

EXPOSE 5201/tcp 5201/udp

ENTRYPOINT ["iperf3"]
