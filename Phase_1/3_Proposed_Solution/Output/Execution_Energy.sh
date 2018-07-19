echo "Calculating Energy for Prp"

python Energy_Calculation.py blackscholes/blackscholes.txt > 6_Energy/blackscholes_prp_Energy_Consumption.txt
python Energy_Calculation.py bodytrack/bodytrack.txt > 6_Energy/bodytrack_prp_Energy_Consumption.txt
python Energy_Calculation.py canneal/canneal.txt > 6_Energy/canneal_prp_Energy_Consumption.txt
python Energy_Calculation.py dedup/dedup.txt > 6_Energy/dedup_prp_Energy_Consumption.txt
python Energy_Calculation.py ferret/ferret.txt > 6_Energy/ferret_prp_Energy_Consumption.txt
python Energy_Calculation.py fluidanimate/fluidanimate.txt > 6_Energy/fluidanimate_prp_Energy_Consumption.txt
python Energy_Calculation.py freqmine/freqmine.txt > 6_Energy/freqmine_prp_Energy_Consumption.txt
python Energy_Calculation.py streamcluster/streamcluster.txt > 6_Energy/streamcluster_prp_Energy_Consumption.txt
python Energy_Calculation.py swaptions/swaptions.txt > 6_Energy/swaptions_prp_Energy_Consumption.txt
python Energy_Calculation.py vips/vips.txt > 6_Energy/vips_prp_Energy_Consumption.txt
python Energy_Calculation.py x264/x264.txt > 6_Energy/x264_prp_Energy_Consumption.txt
