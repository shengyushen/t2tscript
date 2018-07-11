#
#awk -F, -f totaltime.awk bs8192_moe16_1gpu.csv  > ttime_bs8192_moe16_1gpu
#awk -F, -f totaltime.awk bs8192_moe16_2gpu.csv  > ttime_bs8192_moe16_2gpu
#awk -F, -f totaltime.awk bs8192_moe16.csv       > ttime_bs8192_moe16_4gpu
#
#awk -F, -f totaltime.awk bs8192_moe32_1gpu.csv  > ttime_bs8192_moe32_1gpu
#awk -F, -f totaltime.awk bs8192_moe32_2gpu.csv  > ttime_bs8192_moe32_2gpu
#awk -F, -f totaltime.awk bs8192_moe32.csv       > ttime_bs8192_moe32_4gpu
#
#awk -F, -f totaltime.awk bs8192_moe64_1gpu.csv  > ttime_bs8192_moe64_1gpu
#awk -F, -f totaltime.awk bs8192_moe64_2gpu.csv  > ttime_bs8192_moe64_2gpu
#awk -F, -f totaltime.awk bs8192_moe64.csv       > ttime_bs8192_moe64_4gpu
#
#awk -F, -f totaltime.awk bs8192_moe128_1gpu.csv > ttime_bs8192_moe128_1gpu
#awk -F, -f totaltime.awk bs8192_moe128_2gpu.csv > ttime_bs8192_moe128_2gpu
#awk -F, -f totaltime.awk bs8192_moe128.csv      > ttime_bs8192_moe128_4gpu

rm -f ttime_bs8192_moe16
echo -n "1 " >> ttime_bs8192_moe16;  awk '{if($1=="PtoP") {printf   "0 "} else if($1=="dtod") {print $3}}' ttime_bs8192_moe16_1gpu>> ttime_bs8192_moe16
echo -n "2 " >> ttime_bs8192_moe16;  awk '{if($1=="PtoP") {printf $3 " "} else if($1=="dtod") {print $3}}' ttime_bs8192_moe16_2gpu>> ttime_bs8192_moe16
echo -n "4 " >> ttime_bs8192_moe16;  awk '{if($1=="PtoP") {printf $3 " "} else if($1=="dtod") {print $3}}' ttime_bs8192_moe16_4gpu>> ttime_bs8192_moe16

rm -f ttime_bs8192_moe32
echo -n "1 " >> ttime_bs8192_moe32;  awk '{if($1=="PtoP") {printf   "0 "} else if($1=="dtod") {print $3}}' ttime_bs8192_moe32_1gpu>> ttime_bs8192_moe32
echo -n "2 " >> ttime_bs8192_moe32;  awk '{if($1=="PtoP") {printf $3 " "} else if($1=="dtod") {print $3}}' ttime_bs8192_moe32_2gpu>> ttime_bs8192_moe32
echo -n "4 " >> ttime_bs8192_moe32;  awk '{if($1=="PtoP") {printf $3 " "} else if($1=="dtod") {print $3}}' ttime_bs8192_moe32_4gpu>> ttime_bs8192_moe32

rm -f ttime_bs8192_moe64
echo -n "1 " >> ttime_bs8192_moe64;  awk '{if($1=="PtoP") {printf   "0 "} else if($1=="dtod") {print $3}}' ttime_bs8192_moe64_1gpu>> ttime_bs8192_moe64
echo -n "2 " >> ttime_bs8192_moe64;  awk '{if($1=="PtoP") {printf $3 " "} else if($1=="dtod") {print $3}}' ttime_bs8192_moe64_2gpu>> ttime_bs8192_moe64
echo -n "4 " >> ttime_bs8192_moe64;  awk '{if($1=="PtoP") {printf $3 " "} else if($1=="dtod") {print $3}}' ttime_bs8192_moe64_4gpu>> ttime_bs8192_moe64

rm -f ttime_bs8192_moe128
echo -n "1 " >> ttime_bs8192_moe128;  awk '{if($1=="PtoP") {printf   "0 "} else if($1=="dtod") {print $3}}' ttime_bs8192_moe128_1gpu>> ttime_bs8192_moe128
echo -n "2 " >> ttime_bs8192_moe128;  awk '{if($1=="PtoP") {printf $3 " "} else if($1=="dtod") {print $3}}' ttime_bs8192_moe128_2gpu>> ttime_bs8192_moe128
echo -n "4 " >> ttime_bs8192_moe128;  awk '{if($1=="PtoP") {printf $3 " "} else if($1=="dtod") {print $3}}' ttime_bs8192_moe128_4gpu>> ttime_bs8192_moe128

gnuplot -p -e 'set xlabel "GPU number";set ylabel "Traffic(MB)";plot "ttime_bs8192_moe16" u 1:2 w linesp,"ttime_bs8192_moe16" u 1:3 w linesp,"ttime_bs8192_moe32" u 1:2 w linesp,"ttime_bs8192_moe32" u 1:3 w linesp,"ttime_bs8192_moe64" u 1:2 w linesp,"ttime_bs8192_moe64" u 1:3 w linesp,"ttime_bs8192_moe128" u 1:2 w linesp,"ttime_bs8192_moe128" u 1:3 w linesp'
