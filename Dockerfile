FROM debian:testing
MAINTAINER Jean-Christophe Baptiste <jc.baptiste@sysdream.com>

RUN apt-get update && \
apt-get install --no-install-recommends -y \
golang gcc git libc6-dev \
ca-certificates && \
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV GOPATH /opt/go
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

RUN go get github.com/github/gophish && \
cd /opt/go/src/github.com/github/gophish/ && \
go build

WORKDIR /opt/go/src/github.com/github/gophish
ADD ./config.json .

CMD "./gophish"