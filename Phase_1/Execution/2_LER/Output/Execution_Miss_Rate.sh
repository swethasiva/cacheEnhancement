echo "Calculating Miss Rate in LER"

python Miss_Rate.py blackscholes/stats.txt > 4_Miss_Rate/blackscholes_LER_Miss_Rate.csv
python Miss_Rate.py bodytrack/stats.txt > 4_Miss_Rate/bodytrack_LER_Miss_Rate.csv
python Miss_Rate.py canneal/stats.txt > 4_Miss_Rate/canneal_LER_Miss_Rate.csv
python Miss_Rate.py dedup/stats.txt > 4_Miss_Rate/dedup_LER_Miss_Rate.csv 
python Miss_Rate.py facesim/stats.txt > 4_Miss_Rate/facesim_LER_Miss_Rate.csv
python Miss_Rate.py ferret/stats.txt > 4_Miss_Rate/ferret_LER_Miss_Rate.csv
python Miss_Rate.py fluidanimate/stats.txt > 4_Miss_Rate/fluidanimate_LER_Miss_Rate.csv
python Miss_Rate.py freqmine/stats.txt > 4_Miss_Rate/freqmine_LER_Miss_Rate.csv
python Miss_Rate.py streamcluster/stats.txt > 4_Miss_Rate/streamcluster_LER_Miss_Rate.csv
python Miss_Rate.py swaptions/stats.txt > 4_Miss_Rate/swaptions_LER_Miss_Rate.csv
python Miss_Rate.py vips/stats.txt > 4_Miss_Rate/vips_LER_Miss_Rate.csv
python Miss_Rate.py x264/stats.txt > 4_Miss_Rate/x264_LER_Miss_Rate.csv
