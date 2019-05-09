#!/usr/bin/octave -p --no-gui
x=dlmread("sdd1");
sz=[0.0001 0.001 0.01 0.1 1 10 100 1000];
sz=[0.0001 0.0003 0.001 0.003 0.01 0.03 0.1 0.3  1 3 10 30  100 300 1000];
sizearr=[];
for i= 1:(size(sz,2)-1)
	pos=find(x>=sz(1,i) & x<sz(1,i+1));
	sig = sum(x(pos));
	num = size(pos) ;
	sizearr= [sizearr;sz(1,i) sig num];
end
sizearr
loglog(sizearr(:,1),sizearr(:,2),"-or",sizearr(:,1),sizearr(:,3),"-+g");
legend("Totol size(MB)","Totol msg number");
xlabel ("Message size(MB)");
ylabel ("Totol size(MB) or number");

