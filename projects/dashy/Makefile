
PKGNAME:=fg-dashy
BUILD_DIR:= ../../build/${PKGNAME}
VERSION:=0.1.0

all: package

build:
	mkdir -p ${BUILD_DIR}
	rm -rf ${BUILD_DIR}/debian
	tar -czvf ${BUILD_DIR}/../${PKGNAME}_${VERSION}.orig.tar.gz Makefile src/*
	cp -r debian ${BUILD_DIR}

package: build
	cd ${BUILD_DIR} && dpkg-buildpackage
	
update:
	dch -i

install:
	mkdir -p /etc/freyground/${pkgname}
	install -p -m 0644 ./src/dashy.service /etc/systemd/system/

