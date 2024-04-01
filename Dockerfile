FROM alpine

LABEL maintainer Yonier Gomez

RUN apk update && apk add --update --no-cache curl bind-tools zip iproute2 bash unzip python3 aws-cli\
    && rm -rf /var/cache/apk/*