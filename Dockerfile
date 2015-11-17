FROM ubuntu
MAINTAINER Akkz

COPY ./src/ /usr/local/dnspod/
WORKDIR /usr/local/dnspod/src

RUN make

EXPOSE 53
CMD    ["./dnspod-sr"]
