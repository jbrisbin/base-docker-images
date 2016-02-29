RUN \
  apt-get update && \
  apt-get install -q -y curl && \
  rm -Rf /var/cache/apt/*
