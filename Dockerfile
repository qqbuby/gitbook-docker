FROM node:8

LABEL maintainer="ROY XU <qqbuby@gmail.com>"

RUN npm install gitbook-cli -g \
    && gitbook fetch 3 \
    && npm cache clean --force \
    && rm -rf /tmp/* \
    && gitbook --version
