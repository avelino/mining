FROM ubuntu:14.04

MAINTAINER Ayrton Araujo <root@ayr-ton.net>

ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD . /code/

# Install apt-cacher-ng in meaning to use the line below
#RUN echo 'Acquire::http::Proxy "http://172.17.42.1:3142";' > /etc/apt/apt.conf

RUN apt-get update
RUN apt-get install -y build-essential libpq-dev nodejs nodejs-dev npm
RUN apt-get install -y python python-dev python-setuptools git python-pip
RUN git submodule init
RUN git submodule update
RUN ln -sf /usr/bin/nodejs /usr/bin/node
RUN npm -g install bower

RUN make environment
RUN make install
WORKDIR mining/frontend
RUN bower install --allow-root
WORKDIR ../..
