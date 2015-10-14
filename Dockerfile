FROM resin/rpi-raspbian:jessie
MAINTAINER Michael
RUN apt-get update
RUN apt-get -y install wget
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-arm32-vfp-hflt.tar.gz
RUN tar -xzf jdk-8u60-linux-arm32-vfp-hflt.tar.gz
RUN rm jdk-8u60-linux-arm32-vfp-hflt.tar.gz
ENV PATH /jdk1.8.0_60/bin:$PATH
ENV JAVA_HOME /jdk1.8.0_60
