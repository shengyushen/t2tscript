python parsegraph.py ./lm1b/out_bs$1_moe$2/graph.pbtxt |grep ^transformer_moe> allres_bs$1_moe$2
awk '{if($1~/ff_moe/) {moe=moe+$2} else {nom=nom+$2}} END{print moe " " nom }' allres_bs$1_moe$2

