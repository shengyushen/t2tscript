# t2tscript
t2t additional script

grp.sh
fnd.sh : find files 

analyzing.sh : not used and replaced by a2.sh
a2.sh : generate all PtoP report
hddh.sh  : generating all report statics
plt.plt 
plt2.plt : generte plot with a2.sh
totaltime.awk  print out all the total time

seperate.sh  : generate the train time of a csv
seperateall.sh : generate the train time for all csv
plttraintime.sh : plot all train time in a picture

adddelta.sh
adddelta.awk : adding delta to all SSY time report

fit_moe.sh : generate the curve for the trainable variables

lm1b1.sh : run a train job with 4 gpu
lm1b1gpu.sh : run with 1 gpu
lm1b2gpu.sh : run with 2 gpu
runall.sh : call all lm1b1.sh
delpyc.sh : delete all pyc files for all py modified

gentags.sh : generating vim tags for tensor2tensor

parse_graph.awk : find out all node names of a graph

