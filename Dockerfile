FROM ubuntu:12.04
MAINTAINER "Christian Kniep <christian@qnib.org>"

RUN echo "2014-10-02.1";apt-get update

RUN apt-get install -y automake make gcc libtool bzip2 

RUN apt-get install -y munge 

## FPM
RUN apt-get install -y rubygems
RUN gem install fpm

RUN apt-get install -y --force-yes libibcommon1 libibumad1 libibumad1 infiniband-diags openmpi1.5-bin
ADD libmlx4-1_1.0.5-1_amd64.deb /tmp/
RUN dpkg -i /tmp/libmlx4-1_1.0.5-1_amd64.deb
RUN rm -rf  /tmp/libmlx4-1_1.0.5-1_amd64.deb

# make
RUN apt-get install -y make gcc automake libtool libopenmpi1.5-dev
RUN apt-get install -y g++


