#!/bin/bash

../t2tscript/lm1b.sh 128 16  1
../t2tscript/lm1b.sh 128 32  1
../t2tscript/lm1b.sh 128 64  1
../t2tscript/lm1b.sh 128 128 1

../t2tscript/lm1b.sh 128 16  2
../t2tscript/lm1b.sh 128 32  2
../t2tscript/lm1b.sh 128 64  2
../t2tscript/lm1b.sh 128 128 2
../t2tscript/lm1b.sh 128 256 2

../t2tscript/lm1b.sh 128 16  4
../t2tscript/lm1b.sh 128 32  4
../t2tscript/lm1b.sh 128 64  4
../t2tscript/lm1b.sh 128 128 4
../t2tscript/lm1b.sh 128 256 4

../t2tscript/lm1b.sh 1024 16  1
../t2tscript/lm1b.sh 1024 32  1
../t2tscript/lm1b.sh 1024 64  1
../t2tscript/lm1b.sh 1024 128 1

../t2tscript/lm1b.sh 1024 16  2
../t2tscript/lm1b.sh 1024 32  2
../t2tscript/lm1b.sh 1024 64  2
../t2tscript/lm1b.sh 1024 128 2
../t2tscript/lm1b.sh 1024 256 2

../t2tscript/lm1b.sh 1024 16  4
../t2tscript/lm1b.sh 1024 32  4
../t2tscript/lm1b.sh 1024 64  4
../t2tscript/lm1b.sh 1024 128 4
../t2tscript/lm1b.sh 1024 256 4


#../t2tscript/lm1b.sh 8192 16  1
#../t2tscript/lm1b.sh 8192 32  1
#../t2tscript/lm1b.sh 8192 64  1
#../t2tscript/lm1b.sh 8192 128 1
#
#../t2tscript/lm1b.sh 8192 16  2
#../t2tscript/lm1b.sh 8192 32  2
#../t2tscript/lm1b.sh 8192 64  2
#../t2tscript/lm1b.sh 8192 128 2
#../t2tscript/lm1b.sh 8192 256 2
#
#../t2tscript/lm1b.sh 8192 16  4
#../t2tscript/lm1b.sh 8192 32  4
#../t2tscript/lm1b.sh 8192 64  4
#../t2tscript/lm1b.sh 8192 128 4
#../t2tscript/lm1b.sh 8192 256 4


