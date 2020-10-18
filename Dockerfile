FROM debian:stable-slim

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -yq ca-certificates ddclient && \
    rm -rf /var/cache/apt /var/lib/apt/lists/*

ENTRYPOINT ["ddclient", "-daemon=300", "-foreground", "-verbose"]
