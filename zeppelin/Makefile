TAG := jbrisbin/zeppelin

FROM := jbrisbin/build-java:8
MAINTAINER := Jon Brisbin <jon@jbrisbin.com>

OVERLAYS := env packages mesos spark zeppelin

.DEFAULT = install

docker.mk:
	wget https://raw.githubusercontent.com/jbrisbin/docker.mk/master/docker.mk

-include docker.mk
