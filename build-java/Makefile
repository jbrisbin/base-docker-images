TAG := jbrisbin/build-java:8

FROM := jbrisbin/build-essential:ubuntu-trusty
MAINTAINER := Jon Brisbin <jon@jbrisbin.com>

OVERLAYS := docker.mk/overlays/java8

.DEFAULT = install

docker.mk:
	wget https://raw.githubusercontent.com/jbrisbin/docker.mk/master/docker.mk

-include docker.mk
