echo "Calculating Interset Variation of writes"

python Interset_Number_of_writes.py blackscholes/blackscholes.txt > 1_Write_Count/Interset_Variations/blackscholes_prp_Interset.csv
python Interset_Number_of_writes.py bodytrack/bodytrack.txt > 1_Write_Count/Interset_Variations/bodytrack_prp_Interset.csv
python Interset_Number_of_writes.py canneal/canneal.txt > 1_Write_Count/Interset_Variations/canneal_prp_Interset.csv
python Interset_Number_of_writes.py dedup/dedup.txt > 1_Write_Count/Interset_Variations/dedup_prp_Interset.csv 
python Interset_Number_of_writes.py ferret/ferret.txt > 1_Write_Count/Interset_Variations/ferret_prp_Interset.csv
python Interset_Number_of_writes.py fluidanimate/fluidanimate.txt > 1_Write_Count/Interset_Variations/fluidanimate_prp_Interset.csv
python Interset_Number_of_writes.py freqmine/freqmine.txt > 1_Write_Count/Interset_Variations/freqmine_prp_Interset.csv
python Interset_Number_of_writes.py streamcluster/streamcluster.txt > 1_Write_Count/Interset_Variations/streamcluster_prp_Interset.csv
python Interset_Number_of_writes.py swaptions/swaptions.txt > 1_Write_Count/Interset_Variations/swaptions_prp_Interset.csv
python Interset_Number_of_writes.py vips/vips.txt > 1_Write_Count/Interset_Variations/vips_prp_Interset.csv
python Interset_Number_of_writes.py x264/x264.txt > 1_Write_Count/Interset_Variations/x264_prp_Interset.csv

echo "Calculating Intraset Variation of writes"

python Intraset_Number_of_writes.py blackscholes/blackscholes.txt > 1_Write_Count/Intraset_Variations/blackscholes_prp_Intraset.csv
python Intraset_Number_of_writes.py bodytrack/bodytrack.txt > 1_Write_Count/Intraset_Variations/bodytrack_prp_Intraset.csv
python Intraset_Number_of_writes.py canneal/canneal.txt > 1_Write_Count/Intraset_Variations/canneal_prp_Intraset.csv
python Intraset_Number_of_writes.py dedup/dedup.txt > 1_Write_Count/Intraset_Variations/dedup_prp_Intraset.csv 
python Intraset_Number_of_writes.py ferret/ferret.txt > 1_Write_Count/Intraset_Variations/ferret_prp_Intraset.csv
python Intraset_Number_of_writes.py fluidanimate/fluidanimate.txt > 1_Write_Count/Intraset_Variations/fluidanimate_prp_Intraset.csv
python Intraset_Number_of_writes.py freqmine/freqmine.txt > 1_Write_Count/Intraset_Variations/freqmine_prp_Intraset.csv
python Intraset_Number_of_writes.py streamcluster/streamcluster.txt > 1_Write_Count/Intraset_Variations/streamcluster_prp_Intraset.csv
python Intraset_Number_of_writes.py swaptions/swaptions.txt > 1_Write_Count/Intraset_Variations/swaptions_prp_Intraset.csv
python Intraset_Number_of_writes.py vips/vips.txt > 1_Write_Count/Intraset_Variations/vips_prp_Intraset.csv
python Intraset_Number_of_writes.py x264/x264.txt > 1_Write_Count/Intraset_Variations/x264_prp_Intraset.csv
