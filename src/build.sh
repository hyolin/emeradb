#!/bin/sh 
rm configure.in
autoscan
cp configure.in.back configure.in
aclocal
autoconf
autoheader
automake --add-missing
./configure CXXFLAGS= CFLAGS=
make
