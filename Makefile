AG_VERSION ?= 2.0.0

build:
	docker build --build-arg AG_VERSION=$(AG_VERSION) -t ketouem/ag-alpine:$(AG_VERSION) .

test:
	docker run -it --rm --entrypoint=sh ketouem/ag-alpine:$(AG_VERSION) -c \
		"test -s /usr/local/bin/ag"
	docker run -it --rm --entrypoint=sh ketouem/ag-alpine:$(AG_VERSION) -c \
		"test \"$$(/usr/local/bin/ag --version | grep 'ag version' | cut -d' ' -f3)\" = \"$(AG_VERSION)\""
