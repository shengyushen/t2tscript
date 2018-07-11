#!/bin/bash
if [ $# -ne 2 ] ; 
  then echo "Usage : conest.scr <batch size> <mode number> "
else 
  rm -rf lm1b/out_bs$1_moe$2_2gpu
  rm -f bs$1_moe$2_2gpu.*
  mkdir lm1b/out_bs$1_moe$2_2gpu
  nvprof -f --quiet --profile-api-trace none --print-gpu-trace --print-nvlink-topology  --csv --log-file bs$1_moe$2_2gpu.csv -o bs$1_moe$2_2gpu.nvvp \
    /opt/virtualenv-for-tensorflow-1.8/lib/python2.7/site-packages/tensor2tensor-1.6.3-py2.7.egg/EGG-INFO/scripts/t2t-trainer \
    --generate_data \
    --model=transformer_moe \
    --hparams_set=transformer_moe_bs$1_moe$2 \
    --problem=languagemodel_lm1b8k_packed \
    --train_steps=200 \
    --local_eval_frequency=200 \
    --eval_steps=3 \
    --worker_gpu=2 \
    --worker_gpu_memory_fraction=0.80 \
    --keep_checkpoint_max=0 \
    --data_dir=lm1b/data \
    --output_dir=lm1b/out_bs$1_moe$2_2gpu \
    --tmp_dir=lm1b/tmp 2> >(tee bs$1_moe$2_2gpu.log)
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

#--cpu-profiling on
# this may hang at end of creating model
