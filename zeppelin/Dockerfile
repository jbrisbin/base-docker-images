FROM jbrisbin/build-java:8
MAINTAINER Jon Brisbin <jon@jbrisbin.com>
ENV MESOS_VERSION 0.26.0-0.2.145.ubuntu1404
ENV SPARK_VERSION 1.5.2
ENV SPARK_TGZ http://d3kbcqa49mib13.cloudfront.net/spark-1.5.2-bin-hadoop2.6.tgz
ENV SPARK_DIRNAME spark-1.5.2-bin-hadoop2.6
ENV ZEPPELIN_TAG v0.5.6
ENV ZEPPELIN_BUILD_ARGS "-Pspark-1.5 -Phadoop-2.6 -DskipTests"
ENV ZEPPELIN_START_ARGS ""
RUN apt-get install -q -y curl npm nodejs-legacy
# Install Mesos
RUN add-apt-repository "deb http://repos.mesosphere.io/ubuntu/ trusty main"
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF
RUN apt-get update
RUN apt-get install -q -y mesos=$MESOS_VERSION
ENV MESOS_NATIVE_JAVA_LIBRARY /usr/lib/libmesos.so
RUN [ ! -d "/opt/$SPARK_DIRNAME" ] && curl -O $SPARK_TGZ
RUN tar zxvf $SPARK_DIRNAME.tgz -C /opt
ENV SPARK_HOME /opt/$SPARK_DIRNAME
# Install Zeppelin
RUN \
  npm install -g grunt-cli phantomjs-prebuilt && \
  git clone https://github.com/apache/incubator-zeppelin.git && \
  cd /incubator-zeppelin && \
  git checkout $ZEPPELIN_TAG
WORKDIR /incubator-zeppelin
RUN mvn package $ZEPPELIN_BUILD_ARGS
ENV ZEPPELIN_JAVA_OPTS "-Dspark.executor.home=/opt/$SPARK_DIRNAME"

CMD ["bin/zeppelin.sh", "$ZEPPELIN_START_ARGS", "start"]
