IGNORED    := overlays
DIRS       := $(filter-out $(IGNORED),$(shell find * -type d -depth 0 -print;))

.PHONY: all $(DIRS)

all: docker.mk
	$(MAKE) $(DIRS)

clean: docker.mk
	$(foreach dir,$(DIRS), make -C $(dir) clean;)

$(DIRS): docker.mk
	$(MAKE) -C $(@) clean install

docker.mk:
	wget https://raw.githubusercontent.com/jbrisbin/docker.mk/master/docker.mk
