BUILD_DIR:= build/
TRIXIE_BASEDIR:=repo/debian/trixie

all: dashy

dashy:
	cd projects/dashy && make package
	reprepro -S unknown -b repo/debian includedeb trixie build/fg-dashy_*.deb

install:
	cd projects/autoinstall && make install