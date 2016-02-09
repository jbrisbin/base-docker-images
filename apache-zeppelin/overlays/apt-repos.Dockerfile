RUN \
  add-apt-repository "deb http://repos.mesosphere.io/ubuntu/ trusty main" && \
  add-apt-repository -y ppa:andrei-pozolotin/maven3 && \
  add-apt-repository -y ppa:webupd8team/java
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF
RUN apt-get update
