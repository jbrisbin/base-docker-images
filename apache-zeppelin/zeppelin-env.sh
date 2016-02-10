export MESOS_NATIVE_LIBRARY=/usr/lib/libmesos.so

export MASTER=mesos://leader.mesos:5050
export SPARK_EXECUTOR_URI=http://d3kbcqa49mib13.cloudfront.net/spark-1.5.2-bin-hadoop2.6.tgz
#export SPARK_SUBMIT_OPTIONS=""

export ZEPPELIN_JAVA_OPTS="-Dspark.executor.uri=$SPARK_EXECUTOR_URI"
