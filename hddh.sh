grep HtoD bs$1_moe$2_gpu$3.csv |awk -F, '{ssy=ssy+$12} END{print "HtoD(MB) " ssy}'
grep DtoH bs$1_moe$2_gpu$3.csv |awk -F, '{ssy=ssy+$12} END{print "DtoH(MB) " ssy}'
grep DtoD bs$1_moe$2_gpu$3.csv |awk -F, '{ssy=ssy+$12} END{print "DtoD(MB) " ssy}'
grep PtoP bs$1_moe$2_gpu$3.csv |awk -F, '{ssy=ssy+$12} END{print "PtoP(MB) " ssy}'

$(dirname "$0")/seperate.sh  bs$1_moe$2_gpu$3.csv |awk '{print "runtime : " $NF}'

grep "PtoP" bs$1_moe$2_gpu$3.csv > ss3
awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(1\)/) print $1 " " $2 " " $12 " " $13}'  ss3 > ss3_01
awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(2\)/) print $1 " " $2 " " $12 " " $13}'  ss3 > ss3_02
awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(3\)/) print $1 " " $2 " " $12 " " $13}'  ss3 > ss3_03
awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(1\).*Tesla V100-SXM2-16GB \(1\).*Tesla V100-SXM2-16GB \(0\)/) print $1 " " $2 " " $12 " " $13}'  ss3 > ss3_10
awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(1\).*Tesla V100-SXM2-16GB \(1\).*Tesla V100-SXM2-16GB \(2\)/) print $1 " " $2 " " $12 " " $13}'  ss3 > ss3_12
awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(1\).*Tesla V100-SXM2-16GB \(1\).*Tesla V100-SXM2-16GB \(3\)/) print $1 " " $2 " " $12 " " $13}'  ss3 > ss3_13
awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(2\).*Tesla V100-SXM2-16GB \(2\).*Tesla V100-SXM2-16GB \(0\)/) print $1 " " $2 " " $12 " " $13}'  ss3 > ss3_20
awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(2\).*Tesla V100-SXM2-16GB \(2\).*Tesla V100-SXM2-16GB \(1\)/) print $1 " " $2 " " $12 " " $13}'  ss3 > ss3_21
awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(2\).*Tesla V100-SXM2-16GB \(2\).*Tesla V100-SXM2-16GB \(3\)/) print $1 " " $2 " " $12 " " $13}'  ss3 > ss3_23
awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(3\).*Tesla V100-SXM2-16GB \(3\).*Tesla V100-SXM2-16GB \(0\)/) print $1 " " $2 " " $12 " " $13}'  ss3 > ss3_30
awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(3\).*Tesla V100-SXM2-16GB \(3\).*Tesla V100-SXM2-16GB \(1\)/) print $1 " " $2 " " $12 " " $13}'  ss3 > ss3_31
awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(3\).*Tesla V100-SXM2-16GB \(3\).*Tesla V100-SXM2-16GB \(2\)/) print $1 " " $2 " " $12 " " $13}'  ss3 > ss3_32

echo "0 to 0 0"
echo -n  "0 to 1 " ; awk '{ssy=ssy+$3} END{print ssy}' ss3_01
echo -n  "0 to 2 " ; awk '{ssy=ssy+$3} END{print ssy}' ss3_02
echo -n  "0 to 3 " ; awk '{ssy=ssy+$3} END{print ssy}' ss3_03
echo -n  "1 to 0 " ; awk '{ssy=ssy+$3} END{print ssy}' ss3_10
echo     "1 to 1 0"
echo -n  "1 to 2 " ; awk '{ssy=ssy+$3} END{print ssy}' ss3_12
echo -n  "1 to 3 " ; awk '{ssy=ssy+$3} END{print ssy}' ss3_13
echo -n  "2 to 0 " ; awk '{ssy=ssy+$3} END{print ssy}' ss3_20
echo -n  "2 to 1 " ; awk '{ssy=ssy+$3} END{print ssy}' ss3_21
echo     "2 to 2 0"
echo -n  "2 to 3 " ; awk '{ssy=ssy+$3} END{print ssy}' ss3_23
echo -n  "3 to 0 " ; awk '{ssy=ssy+$3} END{print ssy}' ss3_30
echo -n  "3 to 1 " ; awk '{ssy=ssy+$3} END{print ssy}' ss3_31
echo -n  "3 to 2 " ; awk '{ssy=ssy+$3} END{print ssy}' ss3_32
echo  "3 to 3 0"

