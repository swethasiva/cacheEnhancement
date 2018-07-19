echo "Calculating Number of transition in fnw"

python Number_of_transition.py blackscholes/blackscholes.txt > 2_Transition_Count/blackscholes_fnw_Number_of_transition.csv
python Number_of_transition.py bodytrack/bodytrack.txt > 2_Transition_Count/bodytrack_fnw_Number_of_transition.csv
python Number_of_transition.py canneal/canneal.txt > 2_Transition_Count/canneal_fnw_Number_of_transition.csv
python Number_of_transition.py dedup/dedup.txt > 2_Transition_Count/dedup_fnw_Number_of_transition.csv 
python Number_of_transition.py facesim/facesim.txt > 2_Transition_Count/facesim_fnw_Number_of_transition.csv
python Number_of_transition.py ferret/ferret.txt > 2_Transition_Count/ferret_fnw_Number_of_transition.csv
python Number_of_transition.py fluidanimate/fluidanimate.txt > 2_Transition_Count/fluidanimate_fnw_Number_of_transition.csv
python Number_of_transition.py freqmine/freqmine.txt > 2_Transition_Count/freqmine_fnw_Number_of_transition.csv
python Number_of_transition.py streamcluster/streamcluster.txt > 2_Transition_Count/streamcluster_fnw_Number_of_transition.csv
python Number_of_transition.py swaptions/swaptions.txt > 2_Transition_Count/swaptions_fnw_Number_of_transition.csv
python Number_of_transition.py vips/vips.txt > 2_Transition_Count/vips_fnw_Number_of_transition.csv
python Number_of_transition.py x264/x264.txt > 2_Transition_Count/x264_fnw_Number_of_transition.csv
