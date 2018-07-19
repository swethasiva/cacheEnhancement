echo "Calculating IPC in LER"

python IPC.py blackscholes/stats.txt > 3_IPC/blackscholes_LER_IPC.csv
python IPC.py bodytrack/stats.txt > 3_IPC/bodytrack_LER_IPC.csv
python IPC.py canneal/stats.txt > 3_IPC/canneal_LER_IPC.csv
python IPC.py dedup/stats.txt > 3_IPC/dedup_LER_IPC.csv 
python IPC.py facesim/stats.txt > 3_IPC/facesim_LER_IPC.csv
python IPC.py ferret/stats.txt > 3_IPC/ferret_LER_IPC.csv
python IPC.py fluidanimate/stats.txt > 3_IPC/fluidanimate_LER_IPC.csv
python IPC.py freqmine/stats.txt > 3_IPC/freqmine_LER_IPC.csv
python IPC.py streamcluster/stats.txt > 3_IPC/streamcluster_LER_IPC.csv
python IPC.py swaptions/stats.txt > 3_IPC/swaptions_LER_IPC.csv
python IPC.py vips/stats.txt > 3_IPC/vips_LER_IPC.csv
python IPC.py x264/stats.txt > 3_IPC/x264_LER_IPC.csv
