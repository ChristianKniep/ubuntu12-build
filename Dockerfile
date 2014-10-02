FROM ubuntu:12.04
MAINTAINER "Christian Kniep <christian@qnib.org>"

RUN echo "2014-10-02.1";apt-get update

RUN apt-get install -y automake make gcc libtool bzip2 

RUN apt-get install -y munge 

## FPM
RUN apt-get install -y rubygems
RUN gem install fpm


