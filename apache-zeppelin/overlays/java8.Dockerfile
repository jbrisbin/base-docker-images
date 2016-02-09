# Install Java.
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  apt-get install -q -y oracle-java8-installer maven3
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
