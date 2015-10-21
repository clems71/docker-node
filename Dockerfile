FROM phusion/baseimage

# Update to latest packages
RUN apt-get update

RUN apt-get install -y curl
RUN apt-get install -y g++
RUN apt-get install -y python
RUN apt-get install -y make

WORKDIR /opt
RUN curl https://nodejs.org/dist/v4.2.1/node-v4.2.1-linux-x64.tar.gz | tar xvz
ENV PATH /opt/node-v4.2.1-linux-x64/bin:$PATH
ENV NODE_VERSION 4.2.1
