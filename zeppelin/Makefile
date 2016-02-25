TAG               := jbrisbin/zeppelin

FROM              := ubuntu:trusty
MAINTAINER        := Jon Brisbin <jon@jbrisbin.com>

OVERLAYS          := packages docker.mk/ubuntu/java8 docker.mk/ubuntu/mesos docker.mk/ubuntu/spark zeppelin

include ../docker.mk
