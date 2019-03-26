ARG BASE_IMAGE=vandelay/base
FROM ${BASE_IMAGE}

# Copy package.json & yarn.lock file for yarn install
COPY package.json yarn.lock /usr/src/common/
WORKDIR /usr/src/common

ARG NODE_ENV=development
ENV NODE_ENV ${NODE_ENV}

# Create common directory
COPY . /usr/src/common
