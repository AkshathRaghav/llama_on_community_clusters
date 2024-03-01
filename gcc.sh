#!/usr/bin/env bash

# SET ROOT_DIR to where you want to install
# Ensure SRC and BUILD directories are different within the same ROOT directory
export ROOT_DIR=/depot/euge/data/akshath
export SRC_DIR=$ROOT_DIR/gcc/gcc_src
export BUILD_DIR=$ROOT_DIR/gcc/gcc_build

mkdir -p $SRC_DIR && mkdir -p $BUILD_DIR

cd $SRC_DIR
curl ftp://ftp.mirrorservice.org/sites/sourceware.org/pub/gcc/releases/gcc-12.2.0/gcc-12.2.0.tar.gz -O
tar xvf gcc-12.2.0.tar.gz
cd gcc-12.2.0

cd $BUILD_DIR
$SRC_DIR/configure --disable-multilib --enable-languages=c,c++ --prefix=$BUILD_DIR  && make -k clean
make -j 8 
make install 
