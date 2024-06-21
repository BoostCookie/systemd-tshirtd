all:
	#!/bin/sh
	mkdir -p ./build
	for file in ./src/tshirtd.*.typ; do
		typst compile -f svg $file ./build/$(basename -s .typ $file).svg
	done
	cp ./build/tshirtd.newlogo.black.svg preview
	cp ./build/tshirtd.origlogo.black.svg preview
