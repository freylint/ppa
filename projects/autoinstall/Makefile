
all: install

install:
	install -p -m 0644 ./freyground.sources /etc/apt/sources.list.d/
	cat ./fgppa.key | gpg --dearmor -o /usr/share/keyrings/freyground.gpg
	gpg --import ./fgppa.key