FROM ubuntu
MAINTAINER Akkz

COPY ./src/ /usr/local/dnspod/
WORKDIR /usr/local/dnspod/src

RUN apt-get update \
    && apt-get install -y gcc make \
	&& make

EXPOSE 53
CMD    ["./dnspod-sr"]
