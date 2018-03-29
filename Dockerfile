FROM alpine

MAINTAINER Kebe liu <mail@kebe7jun.com>

RUN mkdir /app

WORKDIR /app

ADD . /app

RUN set -ex && \
    apk add --no-cache --virtual .build-deps \
                                build-base && \
    cd vlmcsd && \
    make && \
    mv vlmcsd /usr/bin && \
    apk del .build-deps build-base && \
    rm -rf /tmp/* && \
    rm -rf /app/*

EXPOSE 1688

CMD ["/usr/bin/vlmcsd", "-f"]
