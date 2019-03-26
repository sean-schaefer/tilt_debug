FROM vandelay/base

WORKDIR /usr/src/common
COPY --from=vandelay/common /usr/src/common/package.json /usr/src/common/yarn.lock /usr/src/common/

# Copy package.json & yarn.lock file for yarn install
COPY package.json yarn.lock /usr/src/app/
WORKDIR /usr/src/app

# Create app directories
COPY --from=vandelay/common /usr/src/common /usr/src/common
COPY . /usr/src/app
