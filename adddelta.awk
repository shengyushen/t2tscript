BEGIN {
	ssy=0
} 

{
	if($0 ~ /INFO:tensorflow:SSY/) {
		if(ssy==0) {firsttime=$NF}
		print $0 " " $NF-ssy " " $NF-firsttime;
		ssy=$NF 
	} else print
}
