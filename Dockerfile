FROM alpine:3.11.3
LABEL maintainer="Akito <the@akito.ooo>" \
      version="0.1.0"
RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/edge/testing/"   >> /etc/apk/repositories && \
    apk update    && \
    apk add --update \
            tzdata   \
            bash  && \
RUN rm -fr /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*
ENV TZ Europe/Berlin
