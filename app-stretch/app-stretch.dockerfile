FROM vandelay/base:stretch

WORKDIR /usr/src/common
COPY --from=vandelay/common:stretch /usr/src/common/package.json /usr/src/common/yarn.lock /usr/src/common/

ARG NODE_ENV=development
ENV NODE_ENV ${NODE_ENV}

# Copy package.json & yarn.lock file for yarn install
COPY package.json yarn.lock /usr/src/app/

WORKDIR /usr/src/app

# Create app directories
COPY --from=vandelay/common:stretch /usr/src/common /usr/src/common
COPY . /usr/src/app

# Override common port env
ENV PORT 8080
