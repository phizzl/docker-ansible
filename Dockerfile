FROM ubuntu:21.04
LABEL maintainer "Phizzl <the@phizzl.it>"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y git rsync curl wget python3-pip libffi-dev libssl-dev && \
    apt-get clean all && \
    pip3 install paramiko 'ansible>=2.9.0,<2.10.0' && \
    apt-get purge -y libffi-dev libssl-dev && \
    apt-get autoremove -y && \
    apt-get clean all
