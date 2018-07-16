#!/bin/sh

#IMPORT arg
#IMPORT log
#IMPORT table

function main1() {
	RegistryArg "--ka=<KA>" ""  "@" "KAAA"
	RegistryArg "--kb=<KB>" "a" ""  "KBBB"
	RegistryArg "--kc=<KC>" ""  "A" "KCCC"

	LoadArgs "$@"
	PrintArgs
}

function main2() {
	RegistryArg "--xa=<XA>" ""  "@" "XAAA"
	RegistryArg "--xb=<XB>" "a" ""  "XBBB"
	RegistryArg "--xc=<XC>" "N" "B" "XCCC"

	LoadArgs "$@"
	PrintArgs
}

RegistryCommand cmd1 main1 "MAIN111"
RegistryCommand cmd2 main2 "MAIN222"

Main "$@"
