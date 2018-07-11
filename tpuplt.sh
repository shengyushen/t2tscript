gnuplot -p -e 'set key top left;set multiplot;set origin 0.0,0.0;set size 1,0.5;set xlabel "TPU number";plot "tpunlp" u 1:(1/$2) w linesp,"tpuext" u 1:2 w linesp'
