FROM alpine:latest

RUN apk add --no-cache --update ddclient

ENTRYPOINT ["ddclient", "-daemon=300", "-foreground", "-verbose"]
