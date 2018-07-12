#rm -f moe32_gpu1.traintime
#echo -n "16   " >> moe32_gpu1.traintime  ; $(dirname "$0")/seperate.sh  bs16_moe32_gpu1.csv |awk '{print $NF}'  >> moe32_gpu1.traintime
#echo -n "32   " >> moe32_gpu1.traintime  ; $(dirname "$0")/seperate.sh  bs32_moe32_gpu1.csv |awk '{print $NF}'  >> moe32_gpu1.traintime
#echo -n "64   " >> moe32_gpu1.traintime  ; $(dirname "$0")/seperate.sh  bs64_moe32_gpu1.csv |awk '{print $NF}'  >> moe32_gpu1.traintime
#echo -n "128  " >> moe32_gpu1.traintime  ; $(dirname "$0")/seperate.sh  bs128_moe32_gpu1.csv |awk '{print $NF}'  >> moe32_gpu1.traintime
#echo -n "256  " >> moe32_gpu1.traintime  ; $(dirname "$0")/seperate.sh  bs256_moe32_gpu1.csv |awk '{print $NF}'  >> moe32_gpu1.traintime
#echo -n "512  " >> moe32_gpu1.traintime  ; $(dirname "$0")/seperate.sh  bs512_moe32_gpu1.csv |awk '{print $NF}'  >> moe32_gpu1.traintime
#echo -n "1024 " >> moe32_gpu1.traintime  ; $(dirname "$0")/seperate.sh  bs1024_moe32_gpu1.csv |awk '{print $NF}'  >> moe32_gpu1.traintime
#echo -n "2048 " >> moe32_gpu1.traintime  ; $(dirname "$0")/seperate.sh  bs2048_moe32_gpu1.csv |awk '{print $NF}'  >> moe32_gpu1.traintime
#echo -n "8192 " >> moe32_gpu1.traintime  ; $(dirname "$0")/seperate.sh  bs4096_moe32_gpu1.csv |awk '{print $NF}'  >> moe32_gpu1.traintime


gnuplot -p -e 'set size 1,0.5;set xlabel "batch size";set ylabel "Run time(seconds)";set yrange [20:60];set logscale x;plot "moe32_gpu1.traintime" w linesp'
# ../t2tscript/plttraintime.plt
