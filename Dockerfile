FROM phizzl/base:ubuntu-xenial
LABEL maintainer "Phizzl <the@phizzl.it>"

RUN sudo apt-get install -y python3-pip libffi-dev libssl-dev && \
    sudo apt-get clean all && \
    sudo pip3 install paramiko ansible && \
    sudo apt-get purge -y libffi-dev libssl-dev
