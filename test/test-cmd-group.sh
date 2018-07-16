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
	RegistryArg "--xc=<XC>" ""  "A" "XCCC"

	LoadArgs "$@"
	PrintArgs
}

function main3() {
	RegistryArg "--wa=<WA>" ""  "@" "WAAA"
	RegistryArg "--wb=<WB>" "a" ""  "WBBB"
	RegistryArg "--wc=<WC>" ""  "A" "WCCC"
	RegistryArgExtra "W-extra"

	LoadArgs "$@"
	PrintArgs
}

RegistryCommand "group1 cmd1" main1 "MAIN111"
RegistryCommand "group1 cmd2" main2 "MAIN222"
RegistryCommand "group2" main3 "MAIN333"

Main "$@"
