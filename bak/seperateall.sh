rm -f traintime_bs8192_moe16
rm -f traintime_bs8192_moe32
rm -f traintime_bs8192_moe64
rm -f traintime_bs8192_moe128
rm -f traintime_bs8192_moe256

./seperate.sh bs8192_moe16_1gpu.csv |awk '{print "1 "  $3-$1}' >> traintime_bs8192_moe16
./seperate.sh bs8192_moe32_1gpu.csv |awk '{print "1 "  $3-$1}' >> traintime_bs8192_moe32
./seperate.sh bs8192_moe64_1gpu.csv |awk '{print "1 "  $3-$1}' >> traintime_bs8192_moe64
./seperate.sh bs8192_moe128_1gpu.csv|awk '{print "1 "  $3-$1}' >> traintime_bs8192_moe128

./seperate.sh bs8192_moe16_2gpu.csv |awk '{print "2 "  $3-$1}' >> traintime_bs8192_moe16
./seperate.sh bs8192_moe32_2gpu.csv |awk '{print "2 "  $3-$1}' >> traintime_bs8192_moe32
./seperate.sh bs8192_moe64_2gpu.csv |awk '{print "2 "  $3-$1}' >> traintime_bs8192_moe64
./seperate.sh bs8192_moe128_2gpu.csv|awk '{print "2 "  $3-$1}' >> traintime_bs8192_moe128
./seperate.sh bs8192_moe256_2gpu.csv|awk '{print "2 "  $3-$1}' >> traintime_bs8192_moe256

./seperate.sh bs8192_moe16.csv |awk '{print "4 "  $3-$1}' >> traintime_bs8192_moe16
./seperate.sh bs8192_moe32.csv |awk '{print "4 "  $3-$1}' >> traintime_bs8192_moe32
./seperate.sh bs8192_moe64.csv |awk '{print "4 "  $3-$1}' >> traintime_bs8192_moe64
./seperate.sh bs8192_moe128.csv|awk '{print "4 "  $3-$1}' >> traintime_bs8192_moe128
./seperate.sh bs8192_moe256.csv|awk '{print "4 "  $3-$1}' >> traintime_bs8192_moe256



