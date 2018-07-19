echo "Calculating IPC in fnw"

python IPC.py blackscholes/stats.txt > 3_IPC/blackscholes_fnw_IPC.csv
python IPC.py bodytrack/stats.txt > 3_IPC/bodytrack_fnw_IPC.csv
python IPC.py canneal/stats.txt > 3_IPC/canneal_fnw_IPC.csv
python IPC.py dedup/stats.txt > 3_IPC/dedup_fnw_IPC.csv 
python IPC.py facesim/stats.txt > 3_IPC/facesim_fnw_IPC.csv
python IPC.py ferret/stats.txt > 3_IPC/ferret_fnw_IPC.csv
python IPC.py fluidanimate/stats.txt > 3_IPC/fluidanimate_fnw_IPC.csv
python IPC.py freqmine/stats.txt > 3_IPC/freqmine_fnw_IPC.csv
python IPC.py streamcluster/stats.txt > 3_IPC/streamcluster_fnw_IPC.csv
python IPC.py swaptions/stats.txt > 3_IPC/swaptions_fnw_IPC.csv
python IPC.py vips/stats.txt > 3_IPC/vips_fnw_IPC.csv
python IPC.py x264/stats.txt > 3_IPC/x264_fnw_IPC.csv
