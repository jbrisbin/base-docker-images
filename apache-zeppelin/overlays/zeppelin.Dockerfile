# Install Zeppelin
RUN \
  npm install -g grunt-cli phantomjs-prebuilt && \
  git clone https://github.com/apache/incubator-zeppelin.git && \
  cd /incubator-zeppelin && \
  git checkout v0.5.6
WORKDIR /incubator-zeppelin
RUN mvn package -Dspark.version=1.5.2 -Phadoop-2.6 -DskipTests
COPY zeppelin-env.sh /incubator-zeppelin/conf/zeppelin-env.sh

CMD ["bin/zeppelin.sh", "start"]
