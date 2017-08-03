AG_VERSION ?= 2.0.0

build:
	docker build --build-arg AG_VERSION=$(AG_VERSION) -t ketouem/ag-alpine .
