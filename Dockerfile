FROM node:14-alpine

LABEL maintainer="S-Kazuki<contact@revoneo.com>"

ENV APP_ROOT=/node

WORKDIR $APP_ROOT

RUN apk update \
  && npm i --global npm \
  && npm i --global --force yarn \
  && apk add --update-cache --no-cache tzdata \
  && TZ=${TZ:-Asia/Tokyo} \
  && cp /usr/share/zoneinfo/$TZ /etc/localtime \
  && echo $TZ> /etc/timezone \
  && apk del tzdata --purge
