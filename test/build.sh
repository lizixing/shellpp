#!/bin/sh

cd $(dirname $0)

SRC="$@"

if [ "$SRC" == "" ]; then
	SRC="$(ls test-*.sh)"
fi

for f in $SRC; do
	../spp --src=$f --out=out.$f --include=./pkgs
done
