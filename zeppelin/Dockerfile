FROM jbrisbin/alpine-java
MAINTAINER Jon Brisbin <jon@jbrisbin.com>

# Mesos package 0.26
ENV MESOS_VERSION 0.26.0-0.2.145.ubuntu1404

# Spark 1.5.2
ENV SPARK_VERSION 1.5.2
ENV SPARK_DIRNAME spark-1.5.2-bin-hadoop2.6
ENV SPARK_TGZ http://d3kbcqa49mib13.cloudfront.net/$SPARK_DIRNAME.tgz

# Apache Zeppelin 0.5.6
ENV ZEPPELIN_TAG v0.5.6
ENV ZEPPELIN_BUILD_ARGS "-Pspark-1.5 -Phadoop-2.6 -DskipTests"
ENV ZEPPELIN_START_ARGS ""
RUN apk update && apk add bash
# Install Zeppelin
ADD overlays/spark-1.5.2-bin-hadoop2.6.tgz /opt
ADD overlays/zeppelin-0.5.6-incubating.tar.gz /opt
ENV ZEPPELIN_JAVA_OPTS "-Dspark.executor.home=/opt/spark-1.5.2-bin-hadoop2.6"

WORKDIR /opt/zeppelin-0.5.6-incubating
CMD ["bin/zeppelin.sh", "$ZEPPELIN_START_ARGS", "start"]
