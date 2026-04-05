FROM alpine

LABEL maintainer="Yonier Gomez"

RUN apk update && apk add --update --no-cache \
        curl \
        wget \
        bind-tools \
        zip \
        unzip \
        iproute2 \
        bash \
        python3 \
        aws-cli \
        kubectl \
    && rm -rf /var/cache/apk/*