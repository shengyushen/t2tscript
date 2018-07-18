grep Trainable bs*moe*gpu*.log |sort |awk -F: '{print $1 " " $NF}'|awk '{print $1 " " $NF}'| awk '{split($1,arr,".");split(arr[1],arrr,"_");print substr(arrr[1],3,length(arrr[1])-2) " " substr(arrr[2],4,length(arrr[2])-3) " " substr(arrr[3],4,length(arrr[2]-3)) " " $NF}'|awk '{print  $2 " " $4}'|sort |uniq |sort -t ' ' -k 1 -n > ttt2

#rm -f bs128.feature
#echo -n "16 " >> bs128.feature;grep PtoP bs128_moe16_gpu4.csv|awk -F, '{ssy=ssy+$12} END{print ssy}' >> bs128.feature
#echo -n "32 " >> bs128.feature;grep PtoP bs128_moe32_gpu4.csv|awk -F, '{ssy=ssy+$12} END{print ssy}' >> bs128.feature
#echo -n "64 " >> bs128.feature;grep PtoP bs128_moe64_gpu4.csv|awk -F, '{ssy=ssy+$12} END{print ssy}' >> bs128.feature
#echo -n "128 " >> bs128.feature;grep PtoP bs128_moe128_gpu4.csv|awk -F, '{ssy=ssy+$12} END{print ssy}' >> bs128.feature
#echo -n "256 " >> bs128.feature;grep PtoP bs128_moe256_gpu4.csv|awk -F, '{ssy=ssy+$12} END{print ssy}' >> bs128.feature
#
#rm -f bs8192.feature
#echo -n "16 " >> bs8192.feature;grep PtoP bs8192_moe16_gpu4.csv|awk -F, '{ssy=ssy+$12} END{print ssy}' >> bs8192.feature
#echo -n "32 " >> bs8192.feature;grep PtoP bs8192_moe32_gpu4.csv|awk -F, '{ssy=ssy+$12} END{print ssy}' >> bs8192.feature
#echo -n "64 " >> bs8192.feature;grep PtoP bs8192_moe64_gpu4.csv|awk -F, '{ssy=ssy+$12} END{print ssy}' >> bs8192.feature
#echo -n "128 " >> bs8192.feature;grep PtoP bs8192_moe128_gpu4.csv|awk -F, '{ssy=ssy+$12} END{print ssy}' >> bs8192.feature
#echo -n "256 " >> bs8192.feature;grep PtoP bs8192_moe256_gpu4.csv|awk -F, '{ssy=ssy+$12} END{print ssy}' >> bs8192.feature

gnuplot -p $(dirname "$0")/fit_moe.plt
