echo "Executed the total number of writes"

python Average_write.py blackscholes/blackscholes.txt > 5_WriteCount/blackscholes_LRU_Write.txt
python Average_write.py bodytrack/bodytrack.txt > 5_WriteCount/bodytrack_LRU_Write.txt
python Average_write.py canneal/canneal.txt > 5_WriteCount/canneal_LRU_Write.txt
python Average_write.py dedup/dedup.txt > 5_WriteCount/dedup_LRU_Write.txt
python Average_write.py ferret/ferret.txt > 5_WriteCount/ferret_LRU_Write.txt
python Average_write.py fluidanimate/fluidanimate.txt > 5_WriteCount/fluidanimate_LRU_Write.txt
python Average_write.py freqmine/freqmine.txt > 5_WriteCount/freqmine_LRU_Write.txt
python Average_write.py streamcluster/streamcluster.txt > 5_WriteCount/streamcluster_LRU_Write.txt
python Average_write.py swaptions/swaptions.txt > 5_WriteCount/swaptions_LRU_Write.txt
python Average_write.py vips/vips.txt > 5_WriteCount/vips_LRU_Write.txt
python Average_write.py x264/x264.txt > 5_WriteCount/x264_LRU_Write.txt
