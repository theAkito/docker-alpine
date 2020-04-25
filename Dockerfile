FROM alpine:3.11.6
LABEL maintainer="Akito <the@akito.ooo>"
LABEL version="0.4.0"
RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/edge/testing/"   >> /etc/apk/repositories && \
    apk update    && \
    apk upgrade   && \
    apk add --update \
            tzdata   \
            bash  && \
    echo "" > /root/.ash_history && \
    sed -e "s|/bin/ash|/bin/bash|" -i /etc/passwd
RUN rm -fr /tmp/* /var/tmp/* /var/cache/*/*
ENV TZ=Europe/Berlin
ENV LC_ALL=en_US.UTF-8
CMD ["/bin/bash"]
