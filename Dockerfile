FROM phizzl/base:alpine
LABEL maintainer "Phizzl <the@phizzl.it>"

RUN sudo apk add --no-cache --virtual .build-deps g++ libffi-dev openssl-dev make && \
    sudo apk add --no-cache python3-dev && \
    sudo pip3 --no-cache-dir install --upgrade pip paramiko ansible && \
    sudo apk del .build-deps

