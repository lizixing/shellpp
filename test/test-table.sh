#!/bin/sh

#IMPORT table

for H in Y N; do
	for B in Y N; do
		PrintTable $H $B 4 2 \
			"-COL1" "COL2" "-COL3" "COL4" \
			"1-1" "2-1" \
			"1-2" "2-2" \
			"1-3333333" "2-333" \
			"1-44444" "2-444444444"
		echo
	done
done
