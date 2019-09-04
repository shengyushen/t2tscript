awk -F, '{ if($1 - last > 3) { print last " " $1 } last=$1 }' $1 > $1.bak 
awk '{if($1-last>end-start) {start=last;end=$1};last=$2} END{print start " to " end " : " end-start}' $1.bak 
rm -f $1.bak
