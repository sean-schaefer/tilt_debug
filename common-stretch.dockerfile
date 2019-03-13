FROM golang:1.10-stretch

RUN mkdir /usr/src/common
RUN echo 'Hello from stretch' >> /usr/src/common/strech
