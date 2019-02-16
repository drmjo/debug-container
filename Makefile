.PHONY: build hpcli hcli bcli bpcli cli

build:
	docker build -t drmjo/util:latest .

hpcli: build
	docker run -it --rm \
		--net=host \
		--privileged \
		drmjo/util:latest bash

hcli: build
	docker run -it --rm \
		--net=host \
		drmjo/util:latest bash

bcli: build
	docker run -it --rm \
		--net=bridge \
		drmjo/util:latest bash

bpcli: build
	docker run -it --rm \
		--net=bridge  \
		--privileged \
		drmjo/util:latest bash

cli: build
	docker run -it --rm \
		drmjo/util:latest bash
