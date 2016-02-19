
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
