set terminal png size 900,450
set termoption noenhanced

set style data histograms
set boxwidth 0.70
set style fill solid 1.00

set title TITLE
set ylabel 'Throughput (MB/s)'

set xtics nomirror rotate by -30
set grid ytics

set output FILE.'-read.png'
plot FILE   using 3:xtic(1) lc rgb '#FF8C00' title 'cxon', \
       ''   using 5         lc rgb '#32CD32' title 'boost/json', \
       ''   using 7         lc rgb '#DC143C' title 'rapidjson', \
       ''   using 9         lc rgb '#1E90FF' title 'nlohmann/json'
