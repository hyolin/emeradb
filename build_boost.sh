#!/bin/sh 
bitlevel=64
cd boost
./bootstrap.sh --prefix=./
./b2 --link=static --threading=multi --variant=release --address-model=$bitlevel --runtime-link=static
