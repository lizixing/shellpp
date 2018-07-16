#!/bin/sh

#IMPORT table
#IMPORT  arg
#IMPORT log

RegistryGeneral "V1.0.0 abcdefg"
RegistryArg "--ka=<KA>" ""  "@" "KAAA"
RegistryArg "--kb=<KB>" "a" ""  "KBBB"
RegistryArg "--kc=<KC>" ""  "A" "KCCC"

LoadArgs "$@"
PrintArgs
