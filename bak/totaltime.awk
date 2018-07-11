{
	if($0~/PtoP/) {
		ptop=ptop+$2;
		ptopamount=ptopamount+$12;
	} else if($0~ /HtoD/) {
		htod=htod+$2;
		htodammount=htodammount+$12;
	} else if($0~/DtoH/) {
		dtoh=dtoh+$2;
		dtohammount=dtohammount+$12;
	} else if($0~/DtoD/) {
		dtod=dtod+$2
		dtodammount=dtodammount+$12
	} else {
		other=other+$2
	}
}

END{
	print "PtoP " ptop " " ptopamount
	print "HtoD " htod " " htodammount
	print "DtoH " dtoh " " dtohammount
	print "dtod " dtod " " dtodammount
	print "other " other
}
