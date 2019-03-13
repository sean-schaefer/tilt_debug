FROM golang:1.10

COPY --from=vandelay/common /usr/src/common/regular /app/message

ADD reader.sh /app/reader.sh
