awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(0\).*Tesla V100-SXM2-16GB \(1\)/) print $1 " " $2 " " $12 " " $13}' ss3 > ss3_01
awk -F, '{if($0 ~ /Tesla V100-SXM2-16GB \(3\).*Tesla V100-SXM2-16GB \(3\).*Tesla V100-SXM2-16GB \(4\)/) print $1 " " $2 " " $12 " " $13}' ss3 > ss3_34
gnuplot -p $(dirname "$0")/fit_0134.plt
