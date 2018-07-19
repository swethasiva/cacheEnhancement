echo "Calculating Interset Variation of writes"

python Interset_Number_of_writes.py blackscholes/blackscholes.txt > 1_Write_Count/Interset_Variations/blackscholes_fnw_Interset.csv
python Interset_Number_of_writes.py bodytrack/bodytrack.txt > 1_Write_Count/Interset_Variations/bodytrack_fnw_Interset.csv
python Interset_Number_of_writes.py canneal/canneal.txt > 1_Write_Count/Interset_Variations/canneal_fnw_Interset.csv
python Interset_Number_of_writes.py dedup/dedup.txt > 1_Write_Count/Interset_Variations/dedup_fnw_Interset.csv 
python Interset_Number_of_writes.py facesim/facesim.txt > 1_Write_Count/Interset_Variations/facesim_fnw_Interset.csv
python Interset_Number_of_writes.py ferret/ferret.txt > 1_Write_Count/Interset_Variations/ferret_fnw_Interset.csv
python Interset_Number_of_writes.py fluidanimate/fluidanimate.txt > 1_Write_Count/Interset_Variations/fluidanimate_fnw_Interset.csv
python Interset_Number_of_writes.py freqmine/freqmine.txt > 1_Write_Count/Interset_Variations/freqmine_fnw_Interset.csv
python Interset_Number_of_writes.py streamcluster/streamcluster.txt > 1_Write_Count/Interset_Variations/streamcluster_fnw_Interset.csv
python Interset_Number_of_writes.py swaptions/swaptions.txt > 1_Write_Count/Interset_Variations/swaptions_fnw_Interset.csv
python Interset_Number_of_writes.py vips/vips.txt > 1_Write_Count/Interset_Variations/vips_fnw_Interset.csv
python Interset_Number_of_writes.py x264/x264.txt > 1_Write_Count/Interset_Variations/x264_fnw_Interset.csv

echo "Calculating Intraset Variation of writes"

python Intraset_Number_of_writes.py blackscholes/blackscholes.txt > 1_Write_Count/Intraset_Variations/blackscholes_fnw_Intraset.csv
python Intraset_Number_of_writes.py bodytrack/bodytrack.txt > 1_Write_Count/Intraset_Variations/bodytrack_fnw_Intraset.csv
python Intraset_Number_of_writes.py canneal/canneal.txt > 1_Write_Count/Intraset_Variations/canneal_fnw_Intraset.csv
python Intraset_Number_of_writes.py dedup/dedup.txt > 1_Write_Count/Intraset_Variations/dedup_fnw_Intraset.csv 
python Intraset_Number_of_writes.py facesim/facesim.txt > 1_Write_Count/Intraset_Variations/facesim_fnw_Intraset.csv
python Intraset_Number_of_writes.py ferret/ferret.txt > 1_Write_Count/Intraset_Variations/ferret_fnw_Intraset.csv
python Intraset_Number_of_writes.py fluidanimate/fluidanimate.txt > 1_Write_Count/Intraset_Variations/fluidanimate_fnw_Intraset.csv
python Intraset_Number_of_writes.py freqmine/freqmine.txt > 1_Write_Count/Intraset_Variations/freqmine_fnw_Intraset.csv
python Intraset_Number_of_writes.py streamcluster/streamcluster.txt > 1_Write_Count/Intraset_Variations/streamcluster_fnw_Intraset.csv
python Intraset_Number_of_writes.py swaptions/swaptions.txt > 1_Write_Count/Intraset_Variations/swaptions_fnw_Intraset.csv
python Intraset_Number_of_writes.py vips/vips.txt > 1_Write_Count/Intraset_Variations/vips_fnw_Intraset.csv
python Intraset_Number_of_writes.py x264/x264.txt > 1_Write_Count/Intraset_Variations/x264_fnw_Intraset.csv
