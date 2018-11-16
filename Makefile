all: clean build/install

build:
	mkdir build

build/install: build build/tools-armhf.tar.gz build/tools-x86_64.tar.gz
	cp -a install build/

build/tools-armhf.tar.gz:
	cd tools/armhf && tar -cf tools-armhf.tar * && gzip --best tools-armhf.tar && mv tools-armhf.tar.gz ../../build	

build/tools-x86_64.tar.gz:
	cd tools/x86_64 && tar -cf tools-x86_64.tar * && gzip --best tools-x86_64.tar && mv tools-x86_64.tar.gz ../../build	

clean:
	rm -r build/ || true
