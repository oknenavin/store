set terminal svg dashed noenhanced size 1200,600 font ',14' background rgb 'white'

set title TITLE
set ylabel 'Throughput (MB/s)'
set xlabel 'Time'

set format x ''
set grid ytics

set output OUTPUT.'-average.write.svg'
plot INPUT.'.data'   every 17:1:16 using 10 smooth acsplines with line dt 1 lw 2 lc rgb '#FF8C00' title 'cxon', \
                ''   every 17:1:16 using 12 smooth acsplines with line dt 1 lw 2 lc rgb '#32CD32' title 'boost/json', \
                ''   every 17:1:16 using 14 smooth acsplines with line dt 1 lw 2 lc rgb '#DC143C' title 'rapidjson', \
                ''   every 17:1:16 using 16 smooth acsplines with line dt 1 lw 2 lc rgb '#1E90FF' title 'nlohmann/json'
