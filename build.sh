#!/bin/sh
set -eu

mkdir -p build

for logo in orig new; do
	for mode in dark light; do
		for background in solid transparent; do
			for format in svg pdf png; do
				ppiarg=""
				if [ "$format" = "png" ]; then
					ppiarg="--ppi=762"
				fi
				outfile="build/tshirtd-$logo-$mode-$background.$format"
				echo "$outfile"
				typst compile $ppiarg --input logo="$logo" --input mode="$mode" --input bg="$background" \
					logo.typ "$outfile"
			done
		done
	done
done

mkdir -p preview
cp ./build/tshirtd-new-dark-solid.svg ./build/tshirtd-orig-dark-solid.svg preview
