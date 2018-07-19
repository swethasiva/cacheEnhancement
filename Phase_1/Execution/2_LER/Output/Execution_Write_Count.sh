echo "Calculating Interset Variation of writes"

python Interset_Number_of_writes.py blackscholes/blackscholes.txt > 1_Write_Count/Interset_Variations/blackscholes_LER_Interset.csv
python Interset_Number_of_writes.py bodytrack/bodytrack.txt > 1_Write_Count/Interset_Variations/bodytrack_LER_Interset.csv
python Interset_Number_of_writes.py canneal/canneal.txt > 1_Write_Count/Interset_Variations/canneal_LER_Interset.csv
python Interset_Number_of_writes.py dedup/dedup.txt > 1_Write_Count/Interset_Variations/dedup_LER_Interset.csv 
python Interset_Number_of_writes.py facesim/facesim.txt > 1_Write_Count/Interset_Variations/facesim_LER_Interset.csv
python Interset_Number_of_writes.py ferret/ferret.txt > 1_Write_Count/Interset_Variations/ferret_LER_Interset.csv
python Interset_Number_of_writes.py fluidanimate/fluidanimate.txt > 1_Write_Count/Interset_Variations/fluidanimate_LER_Interset.csv
python Interset_Number_of_writes.py freqmine/freqmine.txt > 1_Write_Count/Interset_Variations/freqmine_LER_Interset.csv
python Interset_Number_of_writes.py streamcluster/streamcluster.txt > 1_Write_Count/Interset_Variations/streamcluster_LER_Interset.csv
python Interset_Number_of_writes.py swaptions/swaptions.txt > 1_Write_Count/Interset_Variations/swaptions_LER_Interset.csv
python Interset_Number_of_writes.py vips/vips.txt > 1_Write_Count/Interset_Variations/vips_LER_Interset.csv
python Interset_Number_of_writes.py x264/x264.txt > 1_Write_Count/Interset_Variations/x264_LER_Interset.csv

echo "Calculating Intraset Variation of writes"

python Intraset_Number_of_writes.py blackscholes/blackscholes.txt > 1_Write_Count/Intraset_Variations/blackscholes_LER_Intraset.csv
python Intraset_Number_of_writes.py bodytrack/bodytrack.txt > 1_Write_Count/Intraset_Variations/bodytrack_LER_Intraset.csv
python Intraset_Number_of_writes.py canneal/canneal.txt > 1_Write_Count/Intraset_Variations/canneal_LER_Intraset.csv
python Intraset_Number_of_writes.py dedup/dedup.txt > 1_Write_Count/Intraset_Variations/dedup_LER_Intraset.csv 
python Intraset_Number_of_writes.py facesim/facesim.txt > 1_Write_Count/Intraset_Variations/facesim_LER_Intraset.csv
python Intraset_Number_of_writes.py ferret/ferret.txt > 1_Write_Count/Intraset_Variations/ferret_LER_Intraset.csv
python Intraset_Number_of_writes.py fluidanimate/fluidanimate.txt > 1_Write_Count/Intraset_Variations/fluidanimate_LER_Intraset.csv
python Intraset_Number_of_writes.py freqmine/freqmine.txt > 1_Write_Count/Intraset_Variations/freqmine_LER_Intraset.csv
python Intraset_Number_of_writes.py streamcluster/streamcluster.txt > 1_Write_Count/Intraset_Variations/streamcluster_LER_Intraset.csv
python Intraset_Number_of_writes.py swaptions/swaptions.txt > 1_Write_Count/Intraset_Variations/swaptions_LER_Intraset.csv
python Intraset_Number_of_writes.py vips/vips.txt > 1_Write_Count/Intraset_Variations/vips_LER_Intraset.csv
python Intraset_Number_of_writes.py x264/x264.txt > 1_Write_Count/Intraset_Variations/x264_LER_Intraset.csv
