echo "Calculating IPC in LRU"

python IPC.py blackscholes/stats.txt > 3_IPC/blackscholes_LRU_IPC.csv
python IPC.py bodytrack/stats.txt > 3_IPC/bodytrack_LRU_IPC.csv
python IPC.py canneal/stats.txt > 3_IPC/canneal_LRU_IPC.csv
python IPC.py dedup/stats.txt > 3_IPC/dedup_LRU_IPC.csv 
python IPC.py ferret/stats.txt > 3_IPC/ferret_LRU_IPC.csv
python IPC.py fluidanimate/stats.txt > 3_IPC/fluidanimate_LRU_IPC.csv
python IPC.py freqmine/stats.txt > 3_IPC/freqmine_LRU_IPC.csv
python IPC.py streamcluster/stats.txt > 3_IPC/streamcluster_LRU_IPC.csv
python IPC.py swaptions/stats.txt > 3_IPC/swaptions_LRU_IPC.csv
python IPC.py vips/stats.txt > 3_IPC/vips_LRU_IPC.csv
python IPC.py x264/stats.txt > 3_IPC/x264_LRU_IPC.csv
