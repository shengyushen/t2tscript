BEGIN {
	print "run time in classes"
}

{
	if($0~ /PtoP/) {ptop=ptop+$2}
	else if($0 ~ /DtoD/) {dtod=dtod+$2}
	else if($0 ~ /HtoD/) {htod=htod+$2}
  else if($0 ~ /DtoH/) {dtoh=dtoh+$2}
	else if($0 ~ /memset/) {memset=memset+$2}
	else {other=other+$2}
}


END {
	print "PtoP " ptop
	print "DtoD " dtod
	print "HtoD " htod
	print "DtoH " dtoh
	print "memset " memset
	print "other " other
}
