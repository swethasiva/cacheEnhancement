echo "Calculating Interset Variation of writes"

python Interset_Number_of_writes.py blackscholes/blackscholes.txt > 1_Write_Count/Interset_Variations/blackscholes_LRU_Interset.csv
python Interset_Number_of_writes.py bodytrack/bodytrack.txt > 1_Write_Count/Interset_Variations/bodytrack_LRU_Interset.csv
python Interset_Number_of_writes.py canneal/canneal.txt > 1_Write_Count/Interset_Variations/canneal_LRU_Interset.csv
python Interset_Number_of_writes.py dedup/dedup.txt > 1_Write_Count/Interset_Variations/dedup_LRU_Interset.csv 
python Interset_Number_of_writes.py facesim/facesim.txt > 1_Write_Count/Interset_Variations/facesim_LRU_Interset.csv
python Interset_Number_of_writes.py ferret/ferret.txt > 1_Write_Count/Interset_Variations/ferret_LRU_Interset.csv
python Interset_Number_of_writes.py fluidanimate/fluidanimate.txt > 1_Write_Count/Interset_Variations/fluidanimate_LRU_Interset.csv
python Interset_Number_of_writes.py freqmine/freqmine.txt > 1_Write_Count/Interset_Variations/freqmine_LRU_Interset.csv
python Interset_Number_of_writes.py streamcluster/streamcluster.txt > 1_Write_Count/Interset_Variations/streamcluster_LRU_Interset.csv
python Interset_Number_of_writes.py swaptions/swaptions.txt > 1_Write_Count/Interset_Variations/swaptions_LRU_Interset.csv
python Interset_Number_of_writes.py vips/vips.txt > 1_Write_Count/Interset_Variations/vips_LRU_Interset.csv
python Interset_Number_of_writes.py x264/x264.txt > 1_Write_Count/Interset_Variations/x264_LRU_Interset.csv

echo "Calculating Intraset Variation of writes"

python Intraset_Number_of_writes.py blackscholes/blackscholes.txt > 1_Write_Count/Intraset_Variations/blackscholes_LRU_Intraset.csv
python Intraset_Number_of_writes.py bodytrack/bodytrack.txt > 1_Write_Count/Intraset_Variations/bodytrack_LRU_Intraset.csv
python Intraset_Number_of_writes.py canneal/canneal.txt > 1_Write_Count/Intraset_Variations/canneal_LRU_Intraset.csv
python Intraset_Number_of_writes.py dedup/dedup.txt > 1_Write_Count/Intraset_Variations/dedup_LRU_Intraset.csv 
python Intraset_Number_of_writes.py facesim/facesim.txt > 1_Write_Count/Intraset_Variations/facesim_LRU_Intraset.csv
python Intraset_Number_of_writes.py ferret/ferret.txt > 1_Write_Count/Intraset_Variations/ferret_LRU_Intraset.csv
python Intraset_Number_of_writes.py fluidanimate/fluidanimate.txt > 1_Write_Count/Intraset_Variations/fluidanimate_LRU_Intraset.csv
python Intraset_Number_of_writes.py freqmine/freqmine.txt > 1_Write_Count/Intraset_Variations/freqmine_LRU_Intraset.csv
python Intraset_Number_of_writes.py streamcluster/streamcluster.txt > 1_Write_Count/Intraset_Variations/streamcluster_LRU_Intraset.csv
python Intraset_Number_of_writes.py swaptions/swaptions.txt > 1_Write_Count/Intraset_Variations/swaptions_LRU_Intraset.csv
python Intraset_Number_of_writes.py vips/vips.txt > 1_Write_Count/Intraset_Variations/vips_LRU_Intraset.csv
python Intraset_Number_of_writes.py x264/x264.txt > 1_Write_Count/Intraset_Variations/x264_LRU_Intraset.csv
