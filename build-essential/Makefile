TAG := jbrisbin/build-essential:ubuntu-trusty

FROM := ubuntu:trusty
MAINTAINER := Jon Brisbin <jon@jbrisbin.com>

OVERLAYS := docker.mk/overlays/build-essential

.DEFAULT = install

docker.mk:
	wget https://raw.githubusercontent.com/jbrisbin/docker.mk/master/docker.mk

-include docker.mk
