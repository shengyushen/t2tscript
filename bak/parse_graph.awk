BEGIN {
	state=0
}

{
	if($0 ~ /node {/) {
		state=1
	} else if(state==0) {
	} else if(state==1) {
		if($1=="name:") {
			print $2
		}
	}
}
