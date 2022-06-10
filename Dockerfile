FROM node:16.15.1-alpine3.16

LABEL maintainer="S-Kazuki<contact@revoneo.com>"

ENV APP_ROOT=/node

WORKDIR $APP_ROOT

RUN apk update \
  && npm install --location=global --force npm yarn \
  && apk add --update-cache --no-cache tzdata \
  && TZ=${TZ:-Asia/Tokyo} \
  && cp /usr/share/zoneinfo/$TZ /etc/localtime \
  && echo $TZ> /etc/timezone \
  && apk del --purge tzdata