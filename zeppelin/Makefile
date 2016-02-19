TAG               := jbrisbin/zeppelin

FROM              := jbrisbin/build-java:8
MAINTAINER        := Jon Brisbin <jon@jbrisbin.com>

OVERLAYS          := env packages docker.mk/overlays/mesos docker.mk/overlays/spark zeppelin

include ../docker.mk
