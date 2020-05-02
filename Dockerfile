FROM phizzl/ubuntu:latest
LABEL maintainer "Phizzl <the@phizzl.it>"

RUN sudo apt-get install -y python3-pip && \
    sudo apt-get clean && \
    sudo pip3 install paramiko ansible

