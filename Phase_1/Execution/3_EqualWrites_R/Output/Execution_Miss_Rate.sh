echo "Calculating Miss Rate in EqualWrites"

python Miss_Rate.py blackscholes/stats.txt > 4_Miss_Rate/blackscholes_EqualWrites_Miss_Rate.csv
python Miss_Rate.py bodytrack/stats.txt > 4_Miss_Rate/bodytrack_EqualWrites_Miss_Rate.csv
python Miss_Rate.py canneal/stats.txt > 4_Miss_Rate/canneal_EqualWrites_Miss_Rate.csv
python Miss_Rate.py dedup/stats.txt > 4_Miss_Rate/dedup_EqualWrites_Miss_Rate.csv 
python Miss_Rate.py facesim/stats.txt > 4_Miss_Rate/facesim_EqualWrites_Miss_Rate.csv
python Miss_Rate.py ferret/stats.txt > 4_Miss_Rate/ferret_EqualWrites_Miss_Rate.csv
python Miss_Rate.py fluidanimate/stats.txt > 4_Miss_Rate/fluidanimate_EqualWrites_Miss_Rate.csv
python Miss_Rate.py freqmine/stats.txt > 4_Miss_Rate/freqmine_EqualWrites_Miss_Rate.csv
python Miss_Rate.py streamcluster/stats.txt > 4_Miss_Rate/streamcluster_EqualWrites_Miss_Rate.csv
python Miss_Rate.py swaptions/stats.txt > 4_Miss_Rate/swaptions_EqualWrites_Miss_Rate.csv
python Miss_Rate.py vips/stats.txt > 4_Miss_Rate/vips_EqualWrites_Miss_Rate.csv
python Miss_Rate.py x264/stats.txt > 4_Miss_Rate/x264_EqualWrites_Miss_Rate.csv
