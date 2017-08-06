FROM alpine

MAINTAINER Kebe liu <mail@kebe7jun.com>

RUN mkdir /app

WORKDIR /app

ADD . /app

RUN set -ex && \
    apk add --no-cache --virtual .build-deps \
                                build-base && \
    make && \
    apk del .build-deps && \
    rm -rf /tmp/*

EXPOSE 1688

CMD ["./vlmcsd", "-D"]
