FROM golang:1.15

RUN apt-get install make

WORKDIR /opt/tyk-gateway
ADD . /opt/tyk-gateway

RUN make build

RUN /opt/tyk-gateway/tyk --version

USER www-data

ENTRYPOINT ["/opt/tyk-gateway/tyk"]