#!/bin/bash
if [ $# -ne 3 ] ; 
  then echo "Usage : lm1b.sh <batch size> <expert number> <gpu number>"
else 
  rm -rf bs$1_moe$2_gpu$3.out
  rm -f bs$1_moe$2_gpu$3.*
  mkdir bs$1_moe$2_gpu$3.out
  nvprof -f --quiet --profile-api-trace none --print-gpu-trace --print-nvlink-topology --csv --log-file bs$1_moe$2_gpu$3.csv -o bs$1_moe$2_gpu$3.nvvp \
    /opt/virtualenv-for-tensorflow-1.8/lib/python2.7/site-packages/tensor2tensor-1.6.3-py2.7.egg/EGG-INFO/scripts/t2t-trainer \
    --generate_data \
    --model=transformer_moe \
    --hparams_set=transformer_moe_bs$1_moe$2 \
    --problem=languagemodel_lm1b8k_packed \
    --train_steps=200 \
    --local_eval_frequency=200 \
    --eval_steps=3 \
    --worker_gpu=$3 \
    --worker_gpu_memory_fraction=0.80 \
    --keep_checkpoint_max=0 \
    --data_dir=../moe_data/data \
    --output_dir=out/bs$1_moe$2_gpu$3 \
    --tmp_dir=/tmp 2> >(tee bs$1_moe$2_gpu$3.log)
fi




#    --local_eval_frequency=200 \
# this is the steps in each iteration
#    --train_steps=400 \
# total steps



################### THESE are not used
# --train_steps_per_iteration=200 \
# this is not used
#    --iterations_per_loop=200 \
#this is not used
#    export CUDA_VISIBLE_DEVICES="2,3"
#    --locally_shard_to_cpu=True \
#  this may cause exit of training
