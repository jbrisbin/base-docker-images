TAG 				:= jbrisbin/apache-zeppelin
FROM 				:= ubuntu:trusty
MAINTAINER 	:= Jon Brisbin <jon@jbrisbin.com>
OVERLAYS 		:= env prereqs apt-repos dist-upgrade java8 mesos zeppelin

docker.mk:
	@wget https://raw.githubusercontent.com/jbrisbin/docker.mk/master/docker.mk

-include docker.mk
