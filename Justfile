all:
	#!/bin/sh
	for file in ./tshirtd.*.typ; do
		typst compile -f svg $file
	done
	cp ./tshirtd.newlogo.black.svg preview
	cp ./tshirtd.origlogo.black.svg preview
