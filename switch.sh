#!/bin/bash


cudaPath=$1

rm -f "$cudaPath/include/cudnn.h"
rm -f "$cudaPath/lib64/libcudnn*"


cp packages/cudnn/include/cudnn.h "$cudaPath/include"
cp packages/cudnn/lib64/libcudnn* "$cudaPath/lib64"

chmod a+r "$cudaPath/include/cudnn.h" 
chmod a+r $(echo "$cudaPath/lib64/libcudnn*")
rm -rf packages/cudnn


cat "$cudaPath/include/cudnn.h" | grep CUDNN_MAJOR -A 2