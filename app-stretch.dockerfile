FROM golang:1.10-stretch

COPY --from=vandelay/common:stretch /usr/src/common /usr/src/common

RUN echo 'Hello from stretch' >> /usrs/src/common/hello

ADD reader.sh /app/reader.sh
