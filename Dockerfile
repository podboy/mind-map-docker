FROM ghcr.io/podboy/nginx

ARG VERSION
ARG RELEASE

LABEL maintainer="zoumingzhe@outlook.com" version=${VERSION}

RUN mkdir /app

COPY tmp/${RELEASE}/index.html /app/
COPY tmp/${RELEASE}/dist /app/dist/
COPY tmp/${RELEASE}/nginx.conf /etc/nginx/nginx.conf
