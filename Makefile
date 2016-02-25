IGNORED    := overlays
DIRS       := $(filter-out $(IGNORED),$(shell find * -type d -depth 0 -print;))

.PHONY: all $(DIRS)

all:
	$(MAKE) $(DIRS)

$(DIRS): docker.mk
	$(MAKE) -C $(@) clean install

docker.mk:
	wget https://raw.githubusercontent.com/jbrisbin/docker.mk/master/docker.mk
