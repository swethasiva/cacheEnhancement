echo "Calculating Miss Rate in prp"

python Time_Analysis.py blackscholes/stats.txt > 8_Timing_Analysis/blackscholes_prp_Time_Analysis.csv
python Time_Analysis.py bodytrack/stats.txt > 8_Timing_Analysis/bodytrack_prp_Time_Analysis.csv
python Time_Analysis.py canneal/stats.txt > 8_Timing_Analysis/canneal_prp_Time_Analysis.csv
python Time_Analysis.py dedup/stats.txt > 8_Timing_Analysis/dedup_prp_Time_Analysis.csv 
python Time_Analysis.py ferret/stats.txt > 8_Timing_Analysis/ferret_prp_Time_Analysis.csv
python Time_Analysis.py fluidanimate/stats.txt > 8_Timing_Analysis/fluidanimate_prp_Time_Analysis.csv
python Time_Analysis.py freqmine/stats.txt > 8_Timing_Analysis/freqmine_prp_Time_Analysis.csv
python Time_Analysis.py streamcluster/stats.txt > 8_Timing_Analysis/streamcluster_prp_Time_Analysis.csv
python Time_Analysis.py swaptions/stats.txt > 8_Timing_Analysis/swaptions_prp_Time_Analysis.csv
python Time_Analysis.py vips/stats.txt > 8_Timing_Analysis/vips_prp_Time_Analysis.csv
python Time_Analysis.py x264/stats.txt > 8_Timing_Analysis/x264_prp_Time_Analysis.csv
