rm -f bsmoe.log
echo -n  "8192 16 2 "  >> bsmoe.log;awk -F, '{if($0 ~ /\(0\).*\(0\).*\(1\).*PtoP/) {ssy=ssy+$12}} END{print ssy}' bs8192_moe16_gpu2.csv   >> bsmoe.log  
echo -n  "8192 32 2 "  >> bsmoe.log;awk -F, '{if($0 ~ /\(0\).*\(0\).*\(1\).*PtoP/) {ssy=ssy+$12}} END{print ssy}' bs8192_moe32_gpu2.csv   >> bsmoe.log
echo -n  "8192 64 2 "  >> bsmoe.log;awk -F, '{if($0 ~ /\(0\).*\(0\).*\(1\).*PtoP/) {ssy=ssy+$12}} END{print ssy}' bs8192_moe64_gpu2.csv   >> bsmoe.log
echo -n  "8192 128 2 " >> bsmoe.log;awk -F, '{if($0 ~ /\(0\).*\(0\).*\(1\).*PtoP/) {ssy=ssy+$12}} END{print ssy}' bs8192_moe128_gpu2.csv >> bsmoe.log
echo -n  "8192 256 2 " >> bsmoe.log;awk -F, '{if($0 ~ /\(0\).*\(0\).*\(1\).*PtoP/) {ssy=ssy+$12}} END{print ssy}' bs8192_moe256_gpu2.csv >> bsmoe.log

echo -n  "8192 16 4 "  >> bsmoe.log;awk -F, '{if($0 ~ /\(0\).*\(0\).*\(1\).*PtoP/) {ssy=ssy+$12}} END{print ssy}'   bs8192_moe16_gpu4.csv   >> bsmoe.log  
echo -n  "8192 32 4 "  >> bsmoe.log;awk -F, '{if($0 ~ /\(0\).*\(0\).*\(1\).*PtoP/) {ssy=ssy+$12}} END{print ssy}'   bs8192_moe32_gpu4.csv   >> bsmoe.log
echo -n  "8192 64 4 "  >> bsmoe.log;awk -F, '{if($0 ~ /\(0\).*\(0\).*\(1\).*PtoP/) {ssy=ssy+$12}} END{print ssy}'   bs8192_moe64_gpu4.csv   >> bsmoe.log
echo -n  "8192 128 4 " >> bsmoe.log;awk -F, '{if($0 ~ /\(0\).*\(0\).*\(1\).*PtoP/) {ssy=ssy+$12}} END{print ssy}' bs8192_moe128_gpu4.csv >> bsmoe.log
echo -n  "8192 256 4 " >> bsmoe.log;awk -F, '{if($0 ~ /\(0\).*\(0\).*\(1\).*PtoP/) {ssy=ssy+$12}} END{print ssy}' bs8192_moe256_gpu4.csv >> bsmoe.log

echo -n  "8192 16 8 "  >> bsmoe.log;awk -F, '{if($0 ~ /\(0\).*\(0\).*\(1\).*PtoP/) {ssy=ssy+$12}} END{print ssy}'   bs8192_moe16_gpu8.csv   >> bsmoe.log  
echo -n  "8192 32 8 "  >> bsmoe.log;awk -F, '{if($0 ~ /\(0\).*\(0\).*\(1\).*PtoP/) {ssy=ssy+$12}} END{print ssy}'   bs8192_moe32_gpu8.csv   >> bsmoe.log
echo -n  "8192 64 8 "  >> bsmoe.log;awk -F, '{if($0 ~ /\(0\).*\(0\).*\(1\).*PtoP/) {ssy=ssy+$12}} END{print ssy}'   bs8192_moe64_gpu8.csv   >> bsmoe.log
echo -n  "8192 128 8 " >> bsmoe.log;awk -F, '{if($0 ~ /\(0\).*\(0\).*\(1\).*PtoP/) {ssy=ssy+$12}} END{print ssy}' bs8192_moe128_gpu8.csv >> bsmoe.log
echo -n  "8192 256 8 " >> bsmoe.log;awk -F, '{if($0 ~ /\(0\).*\(0\).*\(1\).*PtoP/) {ssy=ssy+$12}} END{print ssy}' bs8192_moe256_gpu8.csv >> bsmoe.log



