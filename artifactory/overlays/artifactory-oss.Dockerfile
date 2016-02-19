RUN apt-get install -q -y curl wget zip

ENV ARTIFACTORY_VERSION 4.5.1
ENV ARTIFACTORY_USER artifactory

WORKDIR /opt
RUN wget https://bintray.com/artifact/download/jfrog/artifactory/jfrog-artifactory-oss-$ARTIFACTORY_VERSION.zip
RUN unzip jfrog-artifactory-*.zip
RUN adduser --home /opt/artifactory-oss-$ARTIFACTORY_VERSION --no-create-home --disabled-password -q -gecos '' $ARTIFACTORY_USER
RUN adduser $ARTIFACTORY_USER sudo
RUN chown -R $ARTIFACTORY_USER:$ARTIFACTORY_USER /opt/artifactory-*
WORKDIR /opt/artifactory-oss-$ARTIFACTORY_VERSION

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER $ARTIFACTORY_USER
