FROM alpine:3.12
MAINTAINER Kensium
ENV DEBIAN_FRONTEND noninteractive
RUN apk update &&\
#nginx installation
apk add git nginx && mkdir /run/nginx &&\
COPY services.sh /
ENTRYPOINT ["/services.sh"]
