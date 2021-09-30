FROM alpine:edge

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
    apk add --no-cache --update ddclient

ENTRYPOINT ["ddclient", "-daemon=300", "-foreground", "-verbose"]
