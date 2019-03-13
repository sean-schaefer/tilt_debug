FROM golang:1.10

COPY --from=vandelay/common /usr/src/common /usr/src/common

RUN echo 'Hello from regular' >> /usr/src/common/hello

ADD reader.sh /app/reader.sh
