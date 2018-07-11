#!/bin/bash

#./lm1b1.sh 8192 32
#./lm1b2gpu.sh 8192 32
#
#./lm1b1.sh 8192 64
#./lm1b2gpu.sh 8192 64
#
#./lm1b1.sh 8192 128
#./lm1b2gpu.sh 8192 128

#./lm1b1gpu.sh 8192 16
#./lm1b1gpu.sh 8192 32
#./lm1b1gpu.sh 8192 64
#./lm1b1gpu.sh 8192 128

./lm1b1.sh 8192 256
./lm1b2gpu.sh 8192 256
./lm1b1gpu.sh 8192 256


