FROM alpine:3.11.3
LABEL maintainer="Akito <the@akito.ooo>"
LABEL version="0.2.0"
RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/edge/testing/"   >> /etc/apk/repositories && \
    apk update    && \
    apk upgrade   && \
    apk add --update \
            tzdata   \
            bash  && \
    echo "" > /root/.ash_history && \
    sed -ine "s|/bin/ash|/bin/bash|" /etc/passwd
RUN rm -fr /tmp/* /var/tmp/* /var/cache/*/*
ENV TZ=Europe/Berlin
ENV LC_ALL=en_US.UTF-8
