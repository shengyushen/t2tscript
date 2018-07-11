#!/bin/bash
if [ $# -ne 2 ] ; 
  then echo "Usage : analyzing.sh <batch size> <moe number>"
else 
  grep "Starting" bs$1_moe$2.log  
  awk -F, "if($0 ~ /Tesla V100-SXM2-16GB (0).*Tesla V100-SXM2-16GB (0).*Tesla V100-SXM2-16GB (1)/)" bs$1_moe$2.csv > bs$1_moe$2.ptop_01
  awk -F, "if($0 ~ /Tesla V100-SXM2-16GB (0).*Tesla V100-SXM2-16GB (0).*Tesla V100-SXM2-16GB (2)/)" bs$1_moe$2.csv > bs$1_moe$2.ptop_02
  awk -F, "if($0 ~ /Tesla V100-SXM2-16GB (0).*Tesla V100-SXM2-16GB (0).*Tesla V100-SXM2-16GB (3)/)" bs$1_moe$2.csv > bs$1_moe$2.ptop_03
  awk -F, "if($0 ~ /Tesla V100-SXM2-16GB (1).*Tesla V100-SXM2-16GB (1).*Tesla V100-SXM2-16GB (0)/)" bs$1_moe$2.csv > bs$1_moe$2.ptop_10
  awk -F, "if($0 ~ /Tesla V100-SXM2-16GB (1).*Tesla V100-SXM2-16GB (1).*Tesla V100-SXM2-16GB (2)/)" bs$1_moe$2.csv > bs$1_moe$2.ptop_12
  awk -F, "if($0 ~ /Tesla V100-SXM2-16GB (1).*Tesla V100-SXM2-16GB (1).*Tesla V100-SXM2-16GB (3)/)" bs$1_moe$2.csv > bs$1_moe$2.ptop_13
  awk -F, "if($0 ~ /Tesla V100-SXM2-16GB (2).*Tesla V100-SXM2-16GB (2).*Tesla V100-SXM2-16GB (0)/)" bs$1_moe$2.csv > bs$1_moe$2.ptop_20
  awk -F, "if($0 ~ /Tesla V100-SXM2-16GB (2).*Tesla V100-SXM2-16GB (2).*Tesla V100-SXM2-16GB (1)/)" bs$1_moe$2.csv > bs$1_moe$2.ptop_21
  awk -F, "if($0 ~ /Tesla V100-SXM2-16GB (2).*Tesla V100-SXM2-16GB (2).*Tesla V100-SXM2-16GB (3)/)" bs$1_moe$2.csv > bs$1_moe$2.ptop_23
  awk -F, "if($0 ~ /Tesla V100-SXM2-16GB (3).*Tesla V100-SXM2-16GB (3).*Tesla V100-SXM2-16GB (0)/)" bs$1_moe$2.csv > bs$1_moe$2.ptop_30
  awk -F, "if($0 ~ /Tesla V100-SXM2-16GB (3).*Tesla V100-SXM2-16GB (3).*Tesla V100-SXM2-16GB (1)/)" bs$1_moe$2.csv > bs$1_moe$2.ptop_31
  awk -F, "if($0 ~ /Tesla V100-SXM2-16GB (3).*Tesla V100-SXM2-16GB (3).*Tesla V100-SXM2-16GB (2)/)" bs$1_moe$2.csv > bs$1_moe$2.ptop_32
  grep "HtoD" bs$1_moe$2.csv > bs$1_moe$2.htod
  grep "DtoH" bs$1_moe$2.csv > bs$1_moe$2.dtoh
fi


