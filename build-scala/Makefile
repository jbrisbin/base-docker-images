TAG := jbrisbin/build-scala

FROM := jbrisbin/build-java:8
MAINTAINER := Jon Brisbin <jon@jbrisbin.com>

OVERLAYS := docker.mk/overlays/sbt

.DEFAULT = install

docker.mk:
	wget https://raw.githubusercontent.com/jbrisbin/docker.mk/master/docker.mk

-include docker.mk
