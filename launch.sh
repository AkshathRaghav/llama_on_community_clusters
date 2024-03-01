# Change if needed
export ROOT_DIR=/depot/euge/data/araviki
export TOOLKIT=$ROOT_DIR/nvidia-toolkit/12.3
export SRC_DIR=$ROOT_DIR/gcc/gcc_src
export BUILD_DIR=$ROOT_DIR/gcc/gcc_build

# Leave as is
export PATH=$TOOLKIT/bin:$BUILD_DIR/bin:$PATH
export LD_LIBRARY_PATH=$TOOLKIT/lib64:$BUILD_DIR/local/lib:$BUILD_DIR/lib:$BUILD_DIR/local/lib64:$BUILD_DIR/lib64:$LD_LIBRARY_PATH
export LLAMA=$ROOT_DIR/llama