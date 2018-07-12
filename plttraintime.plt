set xlabel "GPU Number";
set ylabel "Train time of 200 steps(Seconds)";
set key top left;
set logscale x;
set grid;
set xtics 1,2,4;
plot [0.9:5] 	\
	"bs128_moe16.traintime" w linesp,\
	"bs128_moe32.traintime" w linesp,\
	"bs128_moe64.traintime" w linesp,\
	"bs128_moe128.traintime" w linesp,\
	"bs128_moe256.traintime" w linesp,\
	"bs8192_moe16.traintime" w linesp,\
	"bs8192_moe32.traintime" w linesp,\
	"bs8192_moe64.traintime" w linesp,\
	"bs8192_moe128.traintime" w linesp,\
	"bs8192_moe256.traintime" w linesp



#	"bs1024_moe16.traintime" w linesp,\
#	"bs1024_moe32.traintime" w linesp,\
#	"bs1024_moe64.traintime" w linesp,\
#	"bs1024_moe128.traintime" w linesp,\
#	"bs1024_moe256.traintime" w linesp,\
