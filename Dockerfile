FROM ubuntu:16.04

ARG NODE_VERSION=6.10.0
RUN set -x \
    && apt-get update \
    && apt-get install -y curl build-essential \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get install -y nodejs="${NODE_VERSION}-1nodesource1~xenial1"

ARG YARN_VERSION=0.20.3
RUN set -ex \
    && npm install -g "yarn@${YARN_VERSION}"

WORKDIR /usr/src/app
COPY package.json yarn.lock /usr/src/app/
RUN yarn install --frozen-lockfile \
    && yarn check --integrity \
    && yarn cache clean

VOLUME ["/usr/src/app/target"]

COPY ./ ./
CMD ["/usr/src/app/build.sh"]
