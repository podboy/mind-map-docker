MAKEFLAGS += --always-make

RELEASE := mind-map-electron-${VERSION}

all: build

build:
	mkdir -p ${PWD}/tmp
	rm -rf ${PWD}/tmp/${RELEASE}
	tar -xzf ${PWD}/releases/${RELEASE}.tar.gz -C ${PWD}/tmp
	docker build --build-arg VERSION=${VERSION} --build-arg RELEASE=${RELEASE} -t ghcr.io/podboy/mind-map:v${VERSION} -t ghcr.io/podboy/mind-map:${VERSION} -t ghcr.io/podboy/mind-map:latest .
