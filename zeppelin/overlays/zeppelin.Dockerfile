# Install Zeppelin
ADD $CURDIR/spark-1.5.2-bin-hadoop2.6.tgz /opt
ADD $CURDIR/zeppelin-0.5.6-incubating.tar.gz /opt
ENV ZEPPELIN_JAVA_OPTS "-Dspark.executor.home=/opt/spark-1.5.2-bin-hadoop2.6"

WORKDIR /opt/zeppelin-0.5.6-incubating
CMD ["bin/zeppelin.sh", "$ZEPPELIN_START_ARGS", "start"]
