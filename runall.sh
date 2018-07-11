#!/bin/bash

./lm1b1.sh 128 16  1
./lm1b1.sh 128 32  1
./lm1b1.sh 128 64  1
./lm1b1.sh 128 128 1

./lm1b1.sh 128 16  2
./lm1b1.sh 128 32  2
./lm1b1.sh 128 64  2
./lm1b1.sh 128 128 2
./lm1b1.sh 128 256 2

./lm1b1.sh 128 16  4
./lm1b1.sh 128 32  4
./lm1b1.sh 128 64  4
./lm1b1.sh 128 128 4
./lm1b1.sh 128 256 4

./lm1b1.sh 1024 16  1
./lm1b1.sh 1024 32  1
./lm1b1.sh 1024 64  1
./lm1b1.sh 1024 128 1

./lm1b1.sh 1024 16  2
./lm1b1.sh 1024 32  2
./lm1b1.sh 1024 64  2
./lm1b1.sh 1024 128 2
./lm1b1.sh 1024 256 2

./lm1b1.sh 1024 16  4
./lm1b1.sh 1024 32  4
./lm1b1.sh 1024 64  4
./lm1b1.sh 1024 128 4
./lm1b1.sh 1024 256 4


