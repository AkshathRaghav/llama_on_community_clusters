#!/usr/bin/env bash

# SET LLAMA_DIR to where you want to install
export ROOT_DIR=/depot/euge/data/akshath
export LLAMA_DIR=$ROOT_DIR/llama

mkdir -p $LLAMA_DIR 
git clone https://github.com/ggerganov/llama.cpp $LLAMA_DIR
cd $LLAMA_DIR
make LLAMA_CUBLAS=1 && make -k clean && make install 