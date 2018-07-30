rm -f bs8192_gpu8.traffic
echo -n "16 " >> bs8192_gpu8.traffic ; awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(1\).*PtoP/) {ssy=ssy+$12}}  END {print ssy}' bs8192_moe16_gpu8.csv >> bs8192_gpu8.traffic
echo -n "32 " >> bs8192_gpu8.traffic ; awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(1\).*PtoP/) {ssy=ssy+$12}}  END {print ssy}' bs8192_moe32_gpu8.csv >> bs8192_gpu8.traffic
echo -n "64 " >> bs8192_gpu8.traffic ; awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(1\).*PtoP/) {ssy=ssy+$12}}  END {print ssy}' bs8192_moe64_gpu8.csv >> bs8192_gpu8.traffic
echo -n "128 " >> bs8192_gpu8.traffic ; awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(1\).*PtoP/) {ssy=ssy+$12}} END {print ssy}' bs8192_moe128_gpu8.csv >> bs8192_gpu8.traffic
echo -n "256 " >> bs8192_gpu8.traffic ; awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(1\).*PtoP/) {ssy=ssy+$12}} END {print ssy}' bs8192_moe256_gpu8.csv >> bs8192_gpu8.traffic
echo -n "512 " >> bs8192_gpu8.traffic ; awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(1\).*PtoP/) {ssy=ssy+$12}} END {print ssy}' bs8192_moe512_gpu8.csv >> bs8192_gpu8.traffic
