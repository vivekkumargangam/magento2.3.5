FROM ubuntu:latest
MAINTAINER Kensium
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update &&\
#nginx installation
apt-get nginx
COPY services.sh /
ENTRYPOINT ["/services.sh"]
