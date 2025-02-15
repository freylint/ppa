BUILD_DIR:= build/
TRIXIE_BASEDIR:=repo/debian/trixie

all: dashy

dashy:
	cd projects/dashy && make package
	reprepro -S unknown -b repo/debian includedeb trixie $(shell ls build/fg-dashy_*.deb | tail -n 1)

install:
	cd projects/autoinstall && make install