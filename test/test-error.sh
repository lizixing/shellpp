#!/bin/sh

#IMPORT table
#IMPORT error
#IMPORT log

RegistryArg "--ka=<KA>" ""  "@" "KAAA"
RegistryArg "--kb=<KB>" "a" ""  "KBBB"
RegistryArg "--kc=<KC>" ""  "A" "KCCC"

LoadArgs "$@"
PrintArgs
