TAG 				:= jbrisbin/apache-zeppelin
FROM 				:= ubuntu:trusty
ENTRYPOINT 	:= bash -l
# OVERLAYS 		:= env prereqs apt-repos dist-upgrade java8 mesos
OVERLAYS 		:= env prereqs

DOCKER_BUILD_FILE 	?= Dockerfile
DOCKER_BUILD_DIR 		?= $(dir $(realpath $(lastword $(MAKEFILE_LIST))))
DOCKER_BUILD_OPTS 	?=

OVERLAY_FILES := $(foreach overlay,$(OVERLAYS),$(wildcard overlays/$(overlay).Dockerfile))

.PHONY = all clean build

all: $(DOCKER_BUILD_FILE)

clean:
	@echo $(shell docker images $(TAG) | tail +2 | awk '{print $3}')
	@rm -f $(DOCKER_BUILD_FILE)

build: $(DOCKER_BUILD_FILE)
	@echo "Building Docker image $(TAG)"
	@docker build -t $(TAG) $(DOCKER_BUILD_OPTS) -f $(DOCKER_BUILD_FILE) $(DOCKER_BUILD_DIR)

$(DOCKER_BUILD_FILE):
	@echo FROM $(FROM) >$(@)
	@cat $(OVERLAY_FILES) >>$(@)
	@echo ENTRYPOINT $(ENTRYPOINT) >>$(@)
