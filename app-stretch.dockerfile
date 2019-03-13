FROM golang:1.10-stretch

COPY --from=vandelay/common:stretch /usr/src/common/stretch /app/message

ADD reader.sh /app/reader.sh
