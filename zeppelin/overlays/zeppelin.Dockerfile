
# Install Zeppelin
ADD $CURDIR/zeppelin-0.5.6-incubating.tar.gz /opt
ENV \
  ZEPPELIN_START_ARGS="" \
  ZEPPELIN_JAVA_OPTS="-Dspark.executor.memory=2g -Dspark.cores.max=16"

# Configure Zeppelin
WORKDIR /opt/zeppelin-0.5.6-incubating
ADD $CURDIR/zeppelin-env.sh $CURDIR/zeppelin-site.xml /opt/zeppelin-0.5.6-incubating/conf/

# Start Zeppelin
CMD ["bin/zeppelin.sh", "$ZEPPELIN_START_ARGS", "start"]
