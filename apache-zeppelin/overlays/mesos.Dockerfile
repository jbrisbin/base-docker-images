# Install Mesos
RUN apt-get install -q -y mesos=$MESOS_VERSION
ENV MESOS_NATIVE_JAVA_LIBRARY /usr/lib/libmesos.so
