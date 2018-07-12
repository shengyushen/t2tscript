rm -f bs128_moe16.traintime
echo -n "1 " >> bs128_moe16.traintime  ; $(dirname "$0")/seperate.sh  bs128_moe16_gpu1.csv |awk '{print $NF}'  >> bs128_moe16.traintime
echo -n "2 " >> bs128_moe16.traintime  ; $(dirname "$0")/seperate.sh  bs128_moe16_gpu2.csv |awk '{print $NF}'  >> bs128_moe16.traintime
echo -n "4 " >> bs128_moe16.traintime  ; $(dirname "$0")/seperate.sh  bs128_moe16_gpu4.csv |awk '{print $NF}'  >> bs128_moe16.traintime

rm -f bs128_moe32.traintime
echo -n "1 " >> bs128_moe32.traintime  ; $(dirname "$0")/seperate.sh  bs128_moe32_gpu1.csv |awk '{print $NF}'  >> bs128_moe32.traintime
echo -n "2 " >> bs128_moe32.traintime  ; $(dirname "$0")/seperate.sh  bs128_moe32_gpu2.csv |awk '{print $NF}'  >> bs128_moe32.traintime
echo -n "4 " >> bs128_moe32.traintime  ; $(dirname "$0")/seperate.sh  bs128_moe32_gpu4.csv |awk '{print $NF}'  >> bs128_moe32.traintime

rm -f bs128_moe64.traintime
echo -n "1 " >> bs128_moe64.traintime  ; $(dirname "$0")/seperate.sh  bs128_moe64_gpu1.csv |awk '{print $NF}'  >> bs128_moe64.traintime
echo -n "2 " >> bs128_moe64.traintime  ; $(dirname "$0")/seperate.sh  bs128_moe64_gpu2.csv |awk '{print $NF}'  >> bs128_moe64.traintime
echo -n "4 " >> bs128_moe64.traintime  ; $(dirname "$0")/seperate.sh  bs128_moe64_gpu4.csv |awk '{print $NF}'  >> bs128_moe64.traintime

rm -f bs128_moe128.traintime
echo -n "1 " >> bs128_moe128.traintime  ; $(dirname "$0")/seperate.sh  bs128_moe128_gpu1.csv |awk '{print $NF}'  >> bs128_moe128.traintime
echo -n "2 " >> bs128_moe128.traintime  ; $(dirname "$0")/seperate.sh  bs128_moe128_gpu2.csv |awk '{print $NF}'  >> bs128_moe128.traintime
echo -n "4 " >> bs128_moe128.traintime  ; $(dirname "$0")/seperate.sh  bs128_moe128_gpu4.csv |awk '{print $NF}'  >> bs128_moe128.traintime

rm -f bs128_moe256.traintime
echo -n "2 " >> bs128_moe256.traintime  ; $(dirname "$0")/seperate.sh  bs128_moe256_gpu2.csv |awk '{print $NF}'  >> bs128_moe256.traintime
echo -n "4 " >> bs128_moe256.traintime  ; $(dirname "$0")/seperate.sh  bs128_moe256_gpu4.csv |awk '{print $NF}'  >> bs128_moe256.traintime

rm -f bs8192_moe16.traintime
echo -n "1 " >> bs8192_moe16.traintime  ; $(dirname "$0")/seperate.sh  bs8192_moe16_gpu1.csv |awk '{print $NF}'  >> bs8192_moe16.traintime
echo -n "2 " >> bs8192_moe16.traintime  ; $(dirname "$0")/seperate.sh  bs8192_moe16_gpu2.csv |awk '{print $NF}'  >> bs8192_moe16.traintime
echo -n "4 " >> bs8192_moe16.traintime  ; $(dirname "$0")/seperate.sh  bs8192_moe16_gpu4.csv |awk '{print $NF}'  >> bs8192_moe16.traintime

rm -f bs8192_moe32.traintime
echo -n "1 " >> bs8192_moe32.traintime  ; $(dirname "$0")/seperate.sh  bs8192_moe32_gpu1.csv |awk '{print $NF}'  >> bs8192_moe32.traintime
echo -n "2 " >> bs8192_moe32.traintime  ; $(dirname "$0")/seperate.sh  bs8192_moe32_gpu2.csv |awk '{print $NF}'  >> bs8192_moe32.traintime
echo -n "4 " >> bs8192_moe32.traintime  ; $(dirname "$0")/seperate.sh  bs8192_moe32_gpu4.csv |awk '{print $NF}'  >> bs8192_moe32.traintime

rm -f bs8192_moe64.traintime
echo -n "1 " >> bs8192_moe64.traintime  ; $(dirname "$0")/seperate.sh  bs8192_moe64_gpu1.csv |awk '{print $NF}'  >> bs8192_moe64.traintime
echo -n "2 " >> bs8192_moe64.traintime  ; $(dirname "$0")/seperate.sh  bs8192_moe64_gpu2.csv |awk '{print $NF}'  >> bs8192_moe64.traintime
echo -n "4 " >> bs8192_moe64.traintime  ; $(dirname "$0")/seperate.sh  bs8192_moe64_gpu4.csv |awk '{print $NF}'  >> bs8192_moe64.traintime

rm -f bs8192_moe128.traintime
echo -n "1 " >> bs8192_moe128.traintime  ; $(dirname "$0")/seperate.sh  bs8192_moe128_gpu1.csv |awk '{print $NF}'  >> bs8192_moe128.traintime
echo -n "2 " >> bs8192_moe128.traintime  ; $(dirname "$0")/seperate.sh  bs8192_moe128_gpu2.csv |awk '{print $NF}'  >> bs8192_moe128.traintime
echo -n "4 " >> bs8192_moe128.traintime  ; $(dirname "$0")/seperate.sh  bs8192_moe128_gpu4.csv |awk '{print $NF}'  >> bs8192_moe128.traintime

rm -f bs8192_moe256.traintime
echo -n "2 " >> bs8192_moe256.traintime  ; $(dirname "$0")/seperate.sh  bs8192_moe256_gpu2.csv |awk '{print $NF}'  >> bs8192_moe256.traintime
echo -n "4 " >> bs8192_moe256.traintime  ; $(dirname "$0")/seperate.sh  bs8192_moe256_gpu4.csv |awk '{print $NF}'  >> bs8192_moe256.traintime

gnuplot -p $(dirname "$0")/plttraintime.plt
# ../t2tscript/plttraintime.plt
