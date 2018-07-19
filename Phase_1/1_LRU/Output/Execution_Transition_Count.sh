echo "Calculating Number of transition in LRU"

python Number_of_transition.py blackscholes/blackscholes.txt > 2_Transition_Count/blackscholes_LRU_Number_of_transition.csv
python Number_of_transition.py bodytrack/bodytrack.txt > 2_Transition_Count/bodytrack_LRU_Number_of_transition.csv
python Number_of_transition.py canneal/canneal.txt > 2_Transition_Count/canneal_LRU_Number_of_transition.csv
python Number_of_transition.py dedup/dedup.txt > 2_Transition_Count/dedup_LRU_Number_of_transition.csv 
python Number_of_transition.py ferret/ferret.txt > 2_Transition_Count/ferret_LRU_Number_of_transition.csv
python Number_of_transition.py fluidanimate/fluidanimate.txt > 2_Transition_Count/fluidanimate_LRU_Number_of_transition.csv
python Number_of_transition.py freqmine/freqmine.txt > 2_Transition_Count/freqmine_LRU_Number_of_transition.csv
python Number_of_transition.py streamcluster/streamcluster.txt > 2_Transition_Count/streamcluster_LRU_Number_of_transition.csv
python Number_of_transition.py swaptions/swaptions.txt > 2_Transition_Count/swaptions_LRU_Number_of_transition.csv
python Number_of_transition.py vips/vips.txt > 2_Transition_Count/vips_LRU_Number_of_transition.csv
python Number_of_transition.py x264/x264.txt > 2_Transition_Count/x264_LRU_Number_of_transition.csv
