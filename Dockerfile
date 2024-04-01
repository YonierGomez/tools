FROM alpine

LABEL maintainer Yonier Gomez

RUN apk update && apk add --update --no-cache curl bind-tools zip iproute2 bash unzip python3 \
    python3 py3-pip && pip3 install --upgrade pip  && pip3 install awscli && rm -rf /var/cache/apk/*