FROM node:16-alpine

LABEL maintainer="S-Kazuki<contact@revoneo.com>"

ENV APP_ROOT=/node

WORKDIR $APP_ROOT

RUN apk update \
  && npm i --global --force npm yarn \
  && apk add --update-cache --no-cache tzdata \
  && TZ=${TZ:-Asia/Tokyo} \
  && cp /usr/share/zoneinfo/$TZ /etc/localtime \
  && echo $TZ> /etc/timezone \
  && apk del --purge tzdata \
