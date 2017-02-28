FROM ubuntu:16.04

MAINTAINER Kebe liu <mail@kebe7jun.com>

COPY . /

WORKDIR /vlmcsd

EXPOSE 1688

CMD ["./vlmcsd", "-D"]
