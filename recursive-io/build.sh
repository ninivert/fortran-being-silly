#!/bin/sh
CFLAGS='-Wall -Wno-tabs -Wextra -Wunused -Wsurprising -Wpedantic -Wuse-without-only -Waliasing -Winteger-division -Wcharacter-truncation -Wimplicit-interface -Wimplicit-procedure -Wconversion -Wconversion-extra -Wrealloc-lhs-all'  # all warnings
CFLAGS+=' -fcheck=all'  # includes arrays bound checks, slow !!
CFLAGS+=' -g'  # symbols
gfortran $CFLAGS -c uwu.f90 -o uwu.o
gfortran $CFLAGS -c main.f90 -o main.o
gfortran $CFLAGS main.o uwu.o -o main