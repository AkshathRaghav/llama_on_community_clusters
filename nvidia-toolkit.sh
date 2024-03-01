#!/usr/bin/env bash

# SET TOOLKIT to where you want to install
export ROOT_DIR=/depot/euge/data/akshath
export TOOLKIT=$ROOT_DIR/nvidia-toolkit/12.3

mkdir -p $TOOLKIT && cd $TOOLKIT
wget https://developer.download.nvidia.com/compute/cuda/12.3.2/local_installers/cuda_12.3.2_545.23.08_linux.run

chmod +x cuda_12.3.2_545.23.08_linux.run
./cuda_12.3.2_545.23.08_linux.run

