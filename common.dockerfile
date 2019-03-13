FROM golang:1.10

RUN mkdir /usr/src/common

RUN echo 'Hello from regular' >> /usr/src/common/regular
