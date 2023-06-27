FROM alpine:latest

RUN apk add --no-cache --update autoconf automake git make perl-io-socket-ssl && \
    git clone https://github.com/ddclient/ddclient.git && \
    cd ddclient && \
    ./autogen && \
    ./configure --prefix=/usr --sysconfdir=/etc/ddclient --localstatedir=/var && \
    make && \
    make install

ENTRYPOINT ["ddclient", "-daemon=300", "-foreground", "-verbose"]
