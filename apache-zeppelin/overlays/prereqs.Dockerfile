ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
RUN \
  apt-get update && \
  apt-get install -q -y software-properties-common $PACKAGES
