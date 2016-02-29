FROM ubuntu:trusty
MAINTAINER Jon Brisbin <jon@jbrisbin.com>
RUN \
  apt-get update && \
  apt-get install -q -y curl && \
  rm -Rf /var/cache/apt/*
# Install Java 8
RUN \
  echo "deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main" > /etc/apt/sources.list.d/openjdk-r.list && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv 86F44E2A && \
  apt-get update && \
  apt-get install -y openjdk-8-jdk
# Apache Mesos 0.26
ENV \
  MESOS_VERSION=${MESOS_VERSION:-0.26.0-0.2.145.ubuntu1404}

RUN \
  echo "deb http://repos.mesosphere.io/ubuntu/ trusty main" > /etc/apt/sources.list.d/mesos.list && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
  apt-get update && \
  apt-get install -y mesos=$MESOS_VERSION
ENV \
  MESOS_NATIVE_JAVA_LIBRARY=/usr/lib/libmesos.so \
  MESOS_NATIVE_LIBRARY=/usr/lib/libmesos.so
# Install Spark
ENV \
  SPARK_VERSION=${SPARK_VERSION:-1.5.2} \
  SPARK_DIRNAME=${SPARK_DIRNAME:-spark-1.5.2-bin-hadoop2.6}

RUN curl -sSL http://d3kbcqa49mib13.cloudfront.net/${SPARK_DIRNAME}.tgz | tar zxf - -C /opt

ENV \
  SPARK_HOME=/opt/${SPARK_DIRNAME} \
  MASTER=${MASTER:-local[*]} \
  SPARK_SUBMIT_OPTIONS=${SPARK_SUBMIT_OPTIONS:-"--driver-memory 512M --executor-memory 1G"}
VOLUME /usr/lib/spark
