echo "Calculating Miss Rate in prp"

python Miss_Rate.py blackscholes/stats.txt > 4_Miss_Rate/blackscholes_prp_Miss_Analysis.csv
python Miss_Rate.py bodytrack/stats.txt > 4_Miss_Rate/bodytrack_prp_Miss_Analysis.csv
python Miss_Rate.py canneal/stats.txt > 4_Miss_Rate/canneal_prp_Miss_Analysis.csv
python Miss_Rate.py dedup/stats.txt > 4_Miss_Rate/dedup_prp_Miss_Analysis.csv 
python Miss_Rate.py ferret/stats.txt > 4_Miss_Rate/ferret_prp_Miss_Analysis.csv
python Miss_Rate.py fluidanimate/stats.txt > 4_Miss_Rate/fluidanimate_prp_Miss_Analysis.csv
python Miss_Rate.py freqmine/stats.txt > 4_Miss_Rate/freqmine_prp_Miss_Analysis.csv
python Miss_Rate.py streamcluster/stats.txt > 4_Miss_Rate/streamcluster_prp_Miss_Analysis.csv
python Miss_Rate.py swaptions/stats.txt > 4_Miss_Rate/swaptions_prp_Miss_Analysis.csv
python Miss_Rate.py vips/stats.txt > 4_Miss_Rate/vips_prp_Miss_Analysis.csv
python Miss_Rate.py x264/stats.txt > 4_Miss_Rate/x264_prp_Miss_Analysis.csv
